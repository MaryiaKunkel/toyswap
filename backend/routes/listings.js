"use strict";

/** Routes for listings. */

const jsonschema = require("jsonschema");

const express = require("express");
const { BadRequestError } = require("../expressError");
const { ensureLoggedIn, ensureCorrectUser } = require("../middleware/auth");
const Listing = require("../models/listing");
const listingNewSchema = require("../schemas/listingNew.json");
const listingUpdateSchema = require("../schemas/listingUpdate.json");
const listingSearchSchema = require("../schemas/listingSearch.json");

const router = express.Router({ mergeParams: true });

/** POST / { listing } => { listing }
 *
 * listing should be { title, description, price, image_url }
 *
 * Returns { id, title, description, price, image_url, available, shared_by_username }
 *
 * Authorization required: log in
 */

router.post("/", ensureLoggedIn, async function (req, res, next) {
  try {
    const validator = jsonschema.validate(req.body, listingNewSchema);
    if (!validator.valid) {
      const errs = validator.errors.map((e) => e.stack);
      throw new BadRequestError(errs);
    }

    const listing = await Listing.create(req.body);
    return res.status(201).json({ listing });
  } catch (err) {
    return next(err);
  }
});

/** GET / =>
 *   { listings: [ { id, title, description, price, image_url, available, shared_by_username }, ...] }
 *
 * Can provide search filter in query:
 * - address
 * - title (will find case-insensitive, partial matches)

 * Authorization required: none
 */

router.get("/", async function (req, res, next) {
  const q = req.query;
  // arrive as strings from querystring, but we want as int/bool
  // if (q.minSalary !== undefined) q.minSalary = +q.minSalary;
  // q.hasEquity = q.hasEquity === "true";

  try {
    const validator = jsonschema.validate(q, listingSearchSchema);
    if (!validator.valid) {
      const errs = validator.errors.map((e) => e.stack);
      throw new BadRequestError(errs);
    }

    const listings = await Listing.findAll();
    return res.json({ listings });
  } catch (err) {
    return next(err);
  }
});

/** GET /[listingId] => { listing }
 *
 * Returns { id, title, description, price, image_url, available, shared_by_username, address }
 *   where address is { state, city }
 *
 * Authorization required: none
 */

router.get("/:id", async function (req, res, next) {
  try {
    const listing = await Listing.get(req.params.id);
    return res.json({ listing });
  } catch (err) {
    return next(err);
  }
});

/** PATCH /[listingId]  { fld1, fld2, ... } => { listing }
 *
 * Data can include: { title, description, price, image_url, available address }
 *
 * Returns { id, title, description, price, image_url, available, shared_by_username, address_id}
 *
 * Authorization required: correct user
 */

router.patch("/:id", ensureCorrectUser, async function (req, res, next) {
  try {
    const validator = jsonschema.validate(req.body, listingUpdateSchema);
    if (!validator.valid) {
      const errs = validator.errors.map((e) => e.stack);
      throw new BadRequestError(errs);
    }

    const listing = await Listing.update(req.params.id, req.body);
    return res.json({ listing });
  } catch (err) {
    return next(err);
  }
});

/** DELETE /[id]  =>  { deleted: id }
 *
 * Authorization required: correct user
 */

router.delete("/:id", ensureCorrectUser, async function (req, res, next) {
  try {
    await Listing.remove(req.params.id);
    return res.json({ deleted: +req.params.id });
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
