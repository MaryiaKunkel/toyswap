<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![LinkedIn][linkedin-shield]][linkedin-url]
The link to my project at Render.com: https://toyswap-frontend.onrender.com/

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/MaryiaKunkel/nourish_pal/">
    <img src="toyswap_listing.jpg" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">ToySwap</h3>

  <p align="center">
    Toy Swap is a community-driven platform designed specifically for parents to exchange toys for their kids. Much like a Facebook Marketplace but tailored for toys, Toy Swap allows parents to easily give away toys their children no longer play with and find new ones at no cost. This promotes sustainability and provides an affordable way for families to refresh their children's toy collection.

    Key Features:
    - [ ] Toy Exchange: Parents can list toys they want to give away and browse toys that other parents have listed.
    - [ ] Free Exchange: All toy exchanges are free, encouraging a community of sharing and sustainability.
    - [ ] Reviews: Parents can leave reviews for other users, fostering a trustworthy and reliable community.
    - [ ] Chat Functionality: Parents can chat with each other to arrange exchanges, discuss toy details, and build connections within the community.

</p>

</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li>
      <a href="#usage">Usage</a>
    </li>
    <!-- <li>
      <a href="#usage">Testing</a>
        <ul>
          <li><a href="#prerequisites">Prerequisites</a></li>
          <li><a href="#installation">Running tests</a></li>
      </ul>
    </li> -->
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

[![Product Name Screen Shot](https://github.com/MaryiaKunkel/toyswap/blob/main/toyswap_listings.png)](https://github.com/MaryiaKunkel/toyswap/blob/main/toyswap_listings.png)

<!-- Here's a blank template to get started: To avoid retyping too much info. Do a search and replace with your text editor for the following: `github_username`, `repo_name`, `twitter_handle`, `linkedin_username`, `email_client`, `email`, `project_title`, `project_description` -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [![JavaScript][JavaScript Badge]][JavaScript-url]
- [![React.js][React Badge]][React-url]
- [![HTML][HTML Badge]][HTML-url]
- [![CSS][CSS Badge]][CSS-url]
- [![Node][Node Badge]][Node-url]
- [![PostgreSQL][PostgreSQL Badge]][PostgreSQL-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

This is the instructions on setting up the project locally.
To get a local copy up and running follow these simple steps.

### Prerequisites

- React.js

  ```sh
    # Install create-react-app globally
    npm install -g create-react-app

  ```

- PostgreSQL
  ```sh
  # Install PostgreSQL (version 15.4)
  sudo apt-get install postgresql-15
  ```

### Installation

Backend Setup

1. Navigate to the backend directory
2. Clone the repo
   ```sh
   git clone https://github.com/maryiakunkel/ToySwap.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Set up PostgreSQL database
   ```sh
   sudo service postgresql start
    createdb toyswap
   ```
5. Run the seed file
   ```sh
   psql toyswap
   \i touswap.sql
   \i toyswap-seed.sql
   ```
6. Start the backend server
   ```sh
   npm start
   ```

Frontend Setup

1. Navigate to the frontend directory
2. Install NPM packages
   ```sh
   npm install
   ```
3. Start the React development server
   ```sh
   npm start
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

- [ ] Register or log in to your ToySwap account. ![signup](https://github.com/MaryiaKunkel/toyswap/blob/main/signup.png) ![login](https://github.com/MaryiaKunkel/toyswap/blob/main/login.png)
- [ ] Browse or search for toys available for swapping. ![toyswap_listings](https://github.com/MaryiaKunkel/toyswap/blob/main/toyswap_listings.png)
- [ ] Post your own toys for exchange. ![my_listings](https://github.com/MaryiaKunkel/toyswap/blob/main/my_listings.png) ![new_listing_form](https://github.com/MaryiaKunkel/toyswap/blob/main/new_listing_form.png)
- [ ] Engage in chats with other parents to negotiate swaps. ![send_email_form](https://github.com/MaryiaKunkel/toyswap/blob/main/send_email_form.png) ![send_email_client](https://github.com/MaryiaKunkel/toyswap/blob/main/send_email_client.png)
- [ ] Save listings to favorite so you never lose them. ![favorites](https://github.com/MaryiaKunkel/toyswap/blob/main/favorites.png)
- [ ] Leave reviews about your experiences with other parents. ![review_form](https://github.com/MaryiaKunkel/toyswap/blob/main/review_form.png) ![reviews](https://github.com/MaryiaKunkel/toyswap/blob/main/reviews.png)

<!-- Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources. -->

<!-- _For more examples, please refer to the [Documentation](https://example.com)_ -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ### Prerequisites -->

<!-- ```bash
# Install test dependencies (if not already installed)
pip install -r requirements-test.txt
``` -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- ROADMAP -->

## Roadmap

- [ ] User Registration and Authentication. Implement user registration, login, and authentication. Secure user data with JWT tokens.
- [ ] Basic Toy Listing. Allow users to post, edit, and delete toy listings. Implement a search and filter functionality for toy listings.
- [ ] Chat Feature. Enable sending emails to the seller from the listing psge to negotiate exchanges and sales.
- [ ] Review System. Allow users to leave reviews about their experience with other parents.
- [ ] Favorites Feature. Allow users to add listings to favorites and view them later.

<!-- See the [open issues](https://github.com/github_username/repo_name/issues) for a full list of proposed features (and known issues). -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

<!-- ## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request -->

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- LICENSE -->

<!-- ## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- CONTACT -->

## Contact

Maryia Kunkel - [LinkedIn][linkedin-url] - maryiakunkel@gmail.com

Project Link: [https://github.com/MaryiaKunkel/toyswap/](https://github.com/MaryiaKunkel/toyswap/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

<!-- ## Acknowledgments

- []()
- []()
- []()

<p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- MARKDOWN LINKS & IMAGES -->

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/maryia-kunkel/
[product-screenshot]: static/logo.jpg
[Bootstrap-url]: https://getbootstrap.com
[Bootstrap Badge]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[JQuery-url]: https://jquery.com
[JQuery Badge]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[React-url]: https://react.dev/
[React Badge]: https://img.shields.io/badge/-ReactJs-61DAFB?logo=react&logoColor=white&style=for-the-badge
[JavaScript-url]: https://developer.mozilla.org/en-US/docs/Web/JavaScript
[JavaScript Badge]: https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black
[HTML-url]: https://developer.mozilla.org/en-US/docs/Web/HTML
[HTML Badge]: https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white
[CSS-url]: https://developer.mozilla.org/en-US/docs/Web/CSS
[CSS Badge]: https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white
[Node-url]: https://nodejs.org/en
[Node Badge]: https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white
[fontawesome-url]: https://fontawesome.com/
[FontAwesome Badge]: https://img.shields.io/badge/FontAwesome-339AF0?style=for-the-badge&logo=font-awesome&logoColor=white
[PostgreSQL-url]: https://www.postgresql.org/
[PostgreSQL Badge]: https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white
[Jinja-url]: https://jinja.palletsprojects.com/en/3.1.x/
[Jinja Badge]: https://img.shields.io/badge/template-Jinja-green
[product-screenshot]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/home_page.png
[advanced_search_1]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/advanced_search_1.png
[advanced_search_2]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/advanced_search_2.png
[advanced_search_result]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/advanced_search_result.png
[favorites]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/favorites.png
[history]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/history.png
[prifile]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/prifile.png
[profile_edit]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/profile_edit.png
[recipe_page_1]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/recipe_page_1.png
[recipe_page_2]: https://github.com/MaryiaKunkel/nourish_pal/blob/nourishpal/static/recipe_page_2.png

```

```
