import axios from "axios";

const BASE_URL = process.env.REACT_APP_BASE_URL || "http://localhost:3002";

/** API Class.
 *
 * Static class tying together methods used to get/send to to the API.
 * There shouldn't be any frontend-specific stuff here, and there shouldn't
 * be any API-aware stuff elsewhere in the frontend.
 *
 */

class ToyswapApi {
  // the token for interactive with the API will be stored here.
  static token;

  static async request(endpoint, data = {}, method = "get") {
    console.debug("API Call:", endpoint, data, method);

    //there are multiple ways to pass an authorization token, this is how you pass it in the header.
    //this has been provided to show you another way to pass the token. you are only expected to read this code for this project.
    const url = `${BASE_URL}/${endpoint}`;
    const headers = { Authorization: `Bearer ${ToyswapApi.token}` };
    const params = method === "get" ? data : {};

    try {
      return (await axios({ url, method, data, params, headers })).data;
    } catch (err) {
      console.error("API Error:", err.response);
      let message = err.response.data.error.message;
      throw Array.isArray(message) ? message : [message];
    }
  }

  // Individual API routes
  /** Get a list of listings. */

  static async getListOfListings(id) {
    let res = await this.request(`toys`, { id });
    return res.listings;
  }

  /** Get details on a listing by id. */

  static async getListing(id) {
    let res = await this.request(`listings/${id}`);
    return res.listing;
  }

  /** Get details on a user by username. */

  static async getUser(username) {
    let res = await this.request(`users/${username}`);
    return res;
  }

  /** Sign up a new user. */
  static async signUp(userData) {
    let res = await this.request(`auth/register`, userData, "post");
    ToyswapApi.token = res.token;
    return ToyswapApi.token;
  }

  /** Log in a user. */
  static async logIn(userData) {
    let res = await this.request(`auth/token`, userData, "post");
    ToyswapApi.token = res.token;
    return ToyswapApi.token;
  }
}

export default ToyswapApi;
