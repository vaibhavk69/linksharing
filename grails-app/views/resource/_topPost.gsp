<div class="card " >
    <div class="card-header">Recent Share</div>
    <div class="card-body" style="height: 200px; overflow-x: scroll; width: 100%;">
        <g:if test="${topic}">
            <g:each in="${topic}" var="res">
                <div style="float: left"><img class="card-img-left" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8QDhEREA0KDRAQDxAODRAQEA8JFRAKFhIXIhQRExMkHSgsGRslGxMTITEhMSkrLjouFx8/ODMtNygtLjcBCgoKBQwNFQ8FFSsZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAIAAgAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAABAUGAwIH/8QAMBAAAgECAwYFAgcBAAAAAAAAAAECAxEEITEFQVFhcZESIqGxwXLwIzJCUoGC4WL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+4gAAAAAAAAi4nHU6eTd3wXmf88CDPbPCn3kBcAp4bZ40+0idhsdTqZKVnwflf8AHECUAAAAAAAAAAAAAFVtXHuL8EHZ/qlw5LmWVSXhi3wTfoZVybbb1bbfVgAAAAAFxsvHtvwTd3+iXHk+ZamSUmmmtU011RqqU/FFPik+6A9gAAAAAAAAADjilenP6JezMwjSY3ERpwvJN3ySW9szYAAAAAAZp8IrU4L/AIj7GYNJgsRGpC8U1bJp7mgJIAAAAAAAAAAqNvaU+su9ipNLjMMqkPC8t8XraRnsRQdOXhlZvJ5cGBzAAAAAC22DpU6x72ZW4eg6kvDGybu8+CNDg8MqcPCs3rJ6XkBIAAAAAAAAAAAp9u0s4z/q+u75Lg5V6SnFxej+00BlwHr0v7gAAFr1t6sC02FSzlPpFdd/wXJyoUlCKitF9ts6gAAAAAAAAADzKSSu2kuLyA9ArsRtWnHKN5vlku5V4jHVKmsrL9sfL3e8CPLV9X7gAAI6rqvcADWgzWGx1SnpLxL9svN2e4tMPtWnLKV4Pnmu4FiDzGSaumnzWZ6AAAAcK+JhBXlJLlq30RF2pjXTSjH80s762jx6lJJtu7bbe95gWVfa7eUI25yz7Ir6taU35pSl1+EeAAAAAAAAAAAAHujWlB+WUo9PlFjQ2w9Jxvzjl6FWANNh8TCorxkny0a6o7mTi2ndNpresi72XjXUTjL80c76Xjx6gV+15XrS5KK9CGSNoP8AGn9VvREcAAAAAAAAAAAAAAAAATNkStWjzUl6f4QyRs5/jQ"  alt="Card image"></div>
                <div>Name <span style="float: right"></span><p>resource id  is : ${res.resource.description}</p>
                    <br><i class="fab fa-twitter"></i>
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-google"></i>
                </div>
                <br>
                <br>
            </g:each>
        </g:if>
        <g:else>
            <p>No Data Found</p>
        </g:else>
    </div>
</div>