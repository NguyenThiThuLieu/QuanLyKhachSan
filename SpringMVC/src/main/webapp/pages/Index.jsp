<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">
</head>

<body>
    <div class="preloader">
        <div></div>
        <div>Loading Content!</div>
    </div>
    
    <header>
        <input type="checkbox" id="toggle-check">
        <nav>
            <div class="container">
                <h1>Hotel</h1>

                <ul>
                    <li><a href="Index.jsp">Home</a></li>
                    <li><a href="About.jsp" class="current">About</a></li>
                    <li><a href="Contact.jsp">Contact</a></li>
                    <li><a href="Login.jsp">Login</a></li>
                </ul>

                <div class="toggle">
                    <label for="toggle-check" class="toggle-btn"><span></span></i></label>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <section class="showcase">
            <div class="container">
                <div class="text-content">
                    <h1><span class="color-primary">Enjoy</span> Your Stay</h1>
                    <p>Chilling out on the bed in your hotel room watching television, while wearing your own pajamas,
                        is sometimes the best part of a vacation.</p>
                    <p class="author">~Laura Marano</p>
                    <a href="About.jsp" class="btn">About Our Hotel</a>
                </div>
            </div>
            <div class="transparent-layer"></div>
        </section>

        <section class="home-2nd-section">
            <article>
                <svg viewBox="0 0 512 512" width="100">
                    <g id="outline">
                        <path d="m216 336h16v16h-16z" />
                        <path d="m192 177.109h16v16h-16z" />
                        <path d="m192 240h16v16h-16z" />
                        <path d="m304 240h16v16h-16z" />
                        <path d="m304 176h16v16h-16z" />
                        <path d="m136 352h16v16h-16z" />
                        <path d="m136 384h16v16h-16z" />
                        <path d="m136 416h16v16h-16z" />
                        <path d="m248 336h16v16h-16z" />
                        <path d="m280 336h16v16h-16z" />
                        <path d="m216 368h16v16h-16z" />
                        <path d="m248 368h16v16h-16z" />
                        <path d="m280 368h16v16h-16z" />
                        <path d="m360 352h16v16h-16z" />
                        <path d="m360 384h16v16h-16z" />
                        <path d="m360 416h16v16h-16z" />
                        <path d="m256 256a8 8 0 0 0 8-8v-128a8 8 0 0 0 -16 0v128a8 8 0 0 0 8 8z" />
                        <path
                            d="m481.889 408h6.111a8 8 0 0 0 0-16h-6.111a36.746 36.746 0 0 0 -25.889 10.552 36.746 36.746 0 0 0 -25.889-10.552h-6.111a8 8 0 0 0 0 16h6.111a20.811 20.811 0 0 1 17.889 10.062v2.529a36.917 36.917 0 0 0 -17.889-4.591h-6.111a8 8 0 0 0 0 16h6.111a20.811 20.811 0 0 1 17.889 10.062v37.938h-39.652l-.348-144a8 8 0 0 0 6.4-12.8l-24-32a8 8 0 0 0 -6.4-3.2h-32v-8a8 8 0 0 0 -8-8v-112a8 8 0 0 0 8-8v-8.723l18.315-21.483a89.506 89.506 0 0 0 21.63-55.207c.025-.86.036-1.724.036-2.587a48 48 0 0 0 -48.556-48 46.972 46.972 0 0 0 -33.576 14.642 50.252 50.252 0 0 0 -13.827 36.1c.026.837.062 1.674.11 2.506a88.449 88.449 0 0 0 14.236 42.752h-15.168a40 40 0 0 0 -78.39 0h-48.81a8 8 0 0 0 -8 8v32a8 8 0 0 0 8 8v112a8 8 0 0 0 -8 8v8h-32a8 8 0 0 0 -6.4 3.2l-24 32a8 8 0 0 0 6.4 12.8l-.348 144h-39.652v-61.938a20.811 20.811 0 0 1 17.889-10.062h6.111a8 8 0 0 0 0-16h-6.111a36.917 36.917 0 0 0 -17.889 4.591v-2.529a20.811 20.811 0 0 1 17.889-10.062h6.111a8 8 0 0 0 0-16h-6.111a36.746 36.746 0 0 0 -25.889 10.552 36.746 36.746 0 0 0 -25.889-10.552h-6.111a8 8 0 0 0 0 16h6.111a20.811 20.811 0 0 1 17.889 10.062v2.529a36.917 36.917 0 0 0 -17.889-4.591h-6.111a8 8 0 0 0 0 16h6.111a20.811 20.811 0 0 1 17.889 10.062v61.938h-24a8 8 0 0 0 0 16h464a8 8 0 0 0 0-16h-24v-37.938a20.811 20.811 0 0 1 17.889-10.062h6.111a8 8 0 0 0 0-16h-6.111a36.917 36.917 0 0 0 -17.889 4.591v-2.529a20.811 20.811 0 0 1 17.889-10.062zm-305.889-104v-16h160v16zm160-160.679v.679h-40v-16h26.939zm8 192.679h48v112h-48zm36-32 12 16h-48a8 8 0 0 0 8-8v-8zm-84-32v-48h32v48zm32-64h-32v-48h32zm-6.606-166.277a31.1 31.1 0 0 1 22.212-9.723h.376a32 32 0 0 1 32 32c0 .711-.009 1.42-.029 2.132a73.46 73.46 0 0 1 -17.813 45.281l-14.158 16.608-14.194-16.652a73.455 73.455 0 0 1 -17.681-43.036q-.06-1.032-.09-2.066a34.149 34.149 0 0 1 9.377-24.544zm-65.394 54.277a24.028 24.028 0 0 1 24 24v152h-48v-152a24.028 24.028 0 0 1 24-24zm-80 32h40v16h-40zm40 32v48h-32v-48zm-32 64h32v48h-32zm-52 80h28v8a8 8 0 0 0 8 8h-48zm36 32v112h-48v-112zm-48.115 128h48.115v16h-48.346zm64.115-144h144v160h-32v-32h8a8 8 0 0 0 8-8v-32a8 8 0 0 0 -8-8h-96a8 8 0 0 0 -8 8v32a8 8 0 0 0 8 8h8v32h-32zm40 112h-8v-16h80v16zm8 16h16v32h-16zm32 32v-32h16v32zm80 0v-16h48.115l.231 16z" />
                        <path
                            d="m343.981 88a24 24 0 1 0 -24-24 24.027 24.027 0 0 0 24 24zm0-32a8 8 0 1 1 -8 8 8.009 8.009 0 0 1 8-8z" />
                        <path
                            d="m368 224a24.027 24.027 0 0 0 24 24h64a24 24 0 0 0 7.255-46.879 32 32 0 0 0 -52.99-16.6 32.048 32.048 0 0 0 -22.159 15.793 24.041 24.041 0 0 0 -20.106 23.686zm25.371-8a8 8 0 0 0 7.543-5.333 15.994 15.994 0 0 1 13.773-10.607 8 8 0 0 0 5.34-2.666 16 16 0 0 1 27.973 10.606 8 8 0 0 0 8 8 8 8 0 0 1 0 16h-64a8 8 0 0 1 0-16z" />
                        <path
                            d="m120 272a24 24 0 0 0 7.255-46.879 32 32 0 0 0 -52.991-16.6 32.048 32.048 0 0 0 -22.158 15.793 24 24 0 0 0 3.894 47.686zm-72-24a8.009 8.009 0 0 1 8-8h1.371a8 8 0 0 0 7.543-5.333 15.994 15.994 0 0 1 13.772-10.607 8 8 0 0 0 5.34-2.666 16 16 0 0 1 27.974 10.606 8 8 0 0 0 8 8 8 8 0 0 1 0 16h-64a8.009 8.009 0 0 1 -8-8z" />
                    </g>
                </svg>
                <p>Great Location</p>
                <p>If you are in a beautiful place where you can enjoy sunrise and sunset, then you are living like a
                    lord.</p>
            </article>
            <article>
                <svg viewBox="0 0 512 512" width="100">
                    <g>
                        <g>
                            <g>
                                <g>
                                    <g>
                                        <path
                                            d="m494.5 187.183h-44.462c2.602-4.47 4.101-9.657 4.101-15.191v-18.071c3.283-2.255 5.442-6.032 5.442-10.307v-13.651c0-6.893-5.607-12.5-12.5-12.5h-97.347c2.602-4.469 4.1-9.657 4.1-15.19v-18.072c3.283-2.255 5.442-6.032 5.442-10.307v-13.652c0-6.893-5.607-12.5-12.5-12.5h-95.601c-6.893 0-12.5 5.607-12.5 12.5v13.651c0 4.275 2.16 8.053 5.443 10.308v18.07c0 5.534 1.498 10.721 4.1 15.19h-35.948c-6.893 0-12.5 5.607-12.5 12.5v13.651c0 4.275 2.16 8.052 5.442 10.307v18.071c0 5.534 1.499 10.722 4.101 15.191h-43.139c2.602-4.47 4.101-9.657 4.101-15.191v-18.071c3.283-2.255 5.442-6.032 5.442-10.307v-13.651c0-6.893-5.607-12.5-12.5-12.5h-95.6c-6.893 0-12.5 5.607-12.5 12.5v13.651c0 4.275 2.16 8.052 5.442 10.307v18.071c0 5.534 1.499 10.722 4.1 15.191h-47.159c-9.649 0-17.5 7.851-17.5 17.5v19.538c0 8.792 6.524 16.069 14.98 17.297v45.886h-1.542c-4.143 0-7.5 3.357-7.5 7.5s3.357 7.5 7.5 7.5h1.542v154.354c0 4.143 3.357 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-41.395h14.563v41.395c0 4.143 3.357 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-43.107c5.902-2.816 10-8.824 10-15.787v-22.417c0-6.963-4.098-12.972-10-15.787v-57.255h42.826v62.463c0 9.649 7.851 17.5 17.5 17.5h272.26c9.649 0 17.5-7.851 17.5-17.5v-62.463h42.826v10.949c0 4.143 3.357 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-10.949h14.563v55.542h-14.563v-8.666c0-4.143-3.357-7.5-7.5-7.5s-7.5 3.357-7.5 7.5v10.379c-5.902 2.816-10 8.824-10 15.787v22.417c0 6.963 4.098 12.972 10 15.787v43.107c0 4.143 3.357 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-41.395h14.563v41.395c0 4.143 3.357 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-154.352h1.542c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-1.542v-45.886c8.457-1.228 14.98-8.506 14.98-17.297v-19.538c.002-9.65-7.849-17.5-17.498-17.5zm-12.48 213.18h-22.063c-1.379 0-2.5-1.121-2.5-2.5v-22.417c0-1.379 1.121-2.5 2.5-2.5h22.063zm-247.689-213.134c-.142-.015-.287-.02-.432-.027-7.68-.809-13.685-7.32-13.685-15.211v-15.878h79.715v15.878c0 8.436-6.862 15.298-15.298 15.298 0 0-49.909-.03-50.3-.06zm80.598-15.238v-15.878h54.605v15.878c0 8.436-6.862 15.298-15.298 15.298h-43.469c2.64-4.493 4.162-9.72 4.162-15.298zm69.605 0v-15.878h54.604v15.878c0 7.891-6.005 14.402-13.685 15.211-.145.007-45.082.087-45.082.087 2.642-4.493 4.163-9.72 4.163-15.298zm60.047-30.878h-54.604v-8.651h54.604zm-69.604 0h-54.605v-8.544l54.605-.107zm-115.858-38.842v-15.877h13.135c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-18.578v-8.651h90.601v8.651h-36.096c-4.143 0-7.5 3.357-7.5 7.5s3.357 7.5 7.5 7.5h30.653v15.878c0 7.844-5.936 14.32-13.551 15.19h-52.614c-7.614-.871-13.55-7.346-13.55-15.191zm-44.348 30.191 90.6.107v8.544h-90.6zm-125.094 54.767c-.142-.015-.287-.02-.432-.027-7.679-.809-13.684-7.32-13.684-15.211v-15.878h79.715v15.878c0 7.891-6.005 14.402-13.685 15.211-.145.007-.29.012-.432.027-.39.03-51.091.03-51.482 0zm-19.558-54.767h90.6v8.651h-90.6zm-40.139 109.259h14.563v45.684h-14.563zm0 131.225h22.063c1.379 0 2.5 1.121 2.5 2.5v22.417c0 1.379-1.121 2.5-2.5 2.5h-22.063zm14.564-15h-14.564v-55.542h14.563v55.542zm350.086 6.921c0 1.379-1.121 2.5-2.5 2.5h-272.26c-1.379 0-2.5-1.121-2.5-2.5v-62.463h5.313c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-5.313v-6.714c0-1.379 1.121-2.5 2.5-2.5h272.26c1.379 0 2.5 1.121 2.5 2.5v6.714h-5.313c-4.143 0-7.5 3.357-7.5 7.5s3.357 7.5 7.5 7.5h5.313zm15-77.463v-6.714c0-9.649-7.851-17.5-17.5-17.5h-272.26c-9.649 0-17.5 7.851-17.5 17.5v6.714h-42.826v-45.684h37.579c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-79.623c-1.379 0-2.5-1.121-2.5-2.5v-19.538c0-1.379 1.121-2.5 2.5-2.5h477c1.379 0 2.5 1.121 2.5 2.5v19.538c0 1.379-1.121 2.5-2.5 2.5h-361.449c-4.143 0-7.5 3.357-7.5 7.5s3.357 7.5 7.5 7.5h319.405v45.684zm57.826 0v-45.684h14.563v45.684z" />
                                        <path
                                            d="m190.466 292.95h-27.464c-4.143 0-7.5 3.357-7.5 7.5v44.657c0 4.143 3.357 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-14.828h15.654c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-15.654v-7.329h19.964c4.143 0 7.5-3.357 7.5-7.5s-3.358-7.5-7.5-7.5z" />
                                        <path
                                            d="m297.121 307.95c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-30.63c-4.143 0-7.5 3.357-7.5 7.5v44.657c0 4.143 3.357 7.5 7.5 7.5h30.63c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-23.13v-7.328h13.102c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-13.102v-7.329z" />
                                        <path
                                            d="m348.998 307.95c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-30.629c-4.143 0-7.5 3.357-7.5 7.5v44.657c0 4.143 3.357 7.5 7.5 7.5h30.629c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-23.129v-7.328h13.102c4.143 0 7.5-3.357 7.5-7.5s-3.357-7.5-7.5-7.5h-13.102v-7.329z" />
                                        <path
                                            d="m252.015 313.026c0-11.07-9.006-20.076-20.076-20.076h-19.662c-4.143 0-7.5 3.357-7.5 7.5v44.658c0 4.143 3.357 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-12.006c.032.001.063.001.096.001h7.978l10.361 16.068c1.435 2.225 3.848 3.437 6.311 3.437 1.393 0 2.801-.388 4.058-1.197 3.481-2.245 4.483-6.887 2.239-10.368l-7.441-11.539c5.211-3.631 8.636-9.658 8.636-16.478zm-32.239 5.078v-10.154h12.162c2.799 0 5.076 2.277 5.076 5.076 0 2.8-2.277 5.077-5.076 5.077h-12.066c-.032.001-.063.001-.096.001z" />
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </svg>
                <p>Free Meals</p>
                <p>I enjoy a good meal, a good vacation, or a good movie, much as anyone else would.</p>
            </article>
            <article>
                <svg viewBox="0 0 512 512" width="100">
                    <g>
                        <path
                            d="m491.357 112.037h-24.033v-19.971c0-15.833-12.881-28.714-28.713-28.714h-22.905c-15.833 0-28.713 12.881-28.713 28.714v82.212h-38.383v-22.072c0-16.019-13.032-29.05-29.05-29.05-6.294 0-12.12 2.019-16.88 5.434-4.68-9.78-14.673-16.553-26.22-16.553-10.916 0-20.443 6.052-25.405 14.977-4.904-3.781-11.038-6.042-17.696-6.042-10.104 0-19.011 5.191-24.216 13.041-5.083-4.36-11.679-7.002-18.884-7.002-16.019 0-29.05 13.031-29.05 29.05v18.219h-35.854v-21.172c0-4.143-3.358-7.5-7.5-7.5s-7.5 3.357-7.5 7.5v174.232c0 7.562-6.152 13.713-13.713 13.713h-22.908c-7.562 0-13.713-6.151-13.713-13.713v-235.274c0-7.562 6.152-13.714 13.713-13.714h22.905c7.562 0 13.713 6.152 13.713 13.714v29.078c0 4.143 3.358 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-29.078c0-15.833-12.881-28.714-28.713-28.714h-22.905c-15.833 0-28.713 12.881-28.713 28.714v19.971h-24.033c-11.573 0-20.988 9.415-20.988 20.987v153.356c0 11.573 9.415 20.988 20.988 20.988h24.033v19.971c0 15.832 12.881 28.713 28.713 28.713h22.905c15.833 0 28.713-12.881 28.713-28.713v-82.212h25.702v13.695c0 7.038 2.462 13.908 6.934 19.345l23.292 28.318v135.007c0 4.143 3.358 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-137.695c0-1.738-.604-3.422-1.708-4.765l-25-30.395c-2.269-2.758-3.519-6.244-3.519-9.815v-13.695l141.838.867c4.142 0 7.5-3.357 7.5-7.5s-3.358-7.5-7.5-7.5h-34.125c-7.04 0-12.768-5.728-12.768-12.767 0-7.04 5.728-12.768 12.768-12.768h64.487c4.431 0 8.036 3.604 8.036 8.035v45.327c0 3.571-1.25 7.058-3.519 9.815l-25 30.395c-1.104 1.343-1.708 3.026-1.708 4.765v19.781c0 4.143 3.358 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-17.093l23.292-28.318c4.471-5.437 6.934-12.307 6.934-19.345v-13.695h25.702v82.212c0 15.832 12.881 28.713 28.713 28.713h22.905c15.833 0 28.713-12.881 28.713-28.713v-19.971h24.033c11.573 0 20.988-9.415 20.988-20.988v-153.355c.003-11.572-9.412-20.987-20.985-20.987zm-470.369 180.331c-3.302 0-5.988-2.687-5.988-5.988v-153.356c0-3.302 2.686-5.987 5.988-5.987h24.033v165.331zm298.571-154.212c7.748 0 14.05 6.303 14.05 14.05v27.923c0 3.96-1.68 7.686-4.555 10.331h-18.991c-2.875-2.645-4.555-6.371-4.555-10.331v-27.923c0-7.747 6.303-14.05 14.051-14.05zm-57.151 2.931c0-7.747 6.303-14.05 14.05-14.05s14.05 6.303 14.05 14.05v39.042c0 3.96-1.68 7.686-4.555 10.331h-12.186c-2.07 0-4.086.235-6.028.667-3.339-2.636-5.332-6.648-5.332-10.998v-39.042zm-43.101 8.934c0-7.747 6.303-14.05 14.05-14.05s14.051 6.303 14.051 14.05v30.107c0 7.748-6.303 14.051-14.051 14.051s-14.05-6.303-14.05-14.051zm-43.101 6.039c0-7.747 6.303-14.05 14.05-14.05s14.05 6.303 14.05 14.05v24.069c0 7.748-6.303 14.051-14.05 14.051s-14.05-6.303-14.05-14.051zm-50.853 33.218h37.338c3.843 11.548 14.744 19.901 27.566 19.901 8.542 0 16.234-3.708 21.554-9.596 5.32 5.887 13.006 9.596 21.547 9.596 6.187 0 11.914-1.963 16.63-5.273-2.529 4.184-3.987 9.085-3.987 14.321 0 4.256.965 8.291 2.684 11.899h-123.332zm235.938 40.849v-16.632c0-9.936-6.324-18.422-15.158-21.647.37-.839.699-1.697.989-2.57h39.871v40.849zm136.054 56.253c0 3.302-2.686 5.988-5.988 5.988h-24.033v-21.674c0-4.143-3.358-7.5-7.5-7.5s-7.5 3.357-7.5 7.5v56.645c0 7.562-6.152 13.713-13.713 13.713h-22.905c-7.562 0-13.713-6.151-13.713-13.713v-235.273c0-7.562 6.152-13.714 13.713-13.714h22.905c7.562 0 13.713 6.152 13.713 13.714v146.665c0 4.143 3.358 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-111.694h24.033c3.302 0 5.988 2.686 5.988 5.987z" />
                        <path
                            d="m323.564 348.04c-4.142 0-7.5 3.357-7.5 7.5v85.951c0 4.143 3.358 7.5 7.5 7.5s7.5-3.357 7.5-7.5v-85.951c0-4.143-3.357-7.5-7.5-7.5z" />
                    </g>
                </svg>
                <p>Fitness Room</p>
                <p>The purpose of training is to tighten up the slack, toughen the body, and polish the spirit.</p>
            </article>
        </section>

        <section class="home-3rd-section">
            <div class="img"></div>
            <div class="text-content">
                <p>When you get into a hotel room, you lock the door, and you know there is a secrecy, there is a
                    luxury, there is fantasy. There is comfort. There is reassurance.</p>
                <p class="author">ATHENA HOTEL</p>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy;All Rights Reserved by ATHENA HOTEL</p>
        </div>
    </footer>

    <script src="<%= request.getContextPath() %>/resources/js/script.js"></script>
</body>

</html>