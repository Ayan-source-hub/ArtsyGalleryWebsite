  // Array of image sources
const images = ["paint brush.png", "DSLR.png", "paint stand.png"];
let currentIndex = 0;

// Function to change the image periodically
function changeImage() {
const imgElement = document.getElementById("animated-image");
currentIndex = (currentIndex + 1) % images.length; // Loop back to the first image
imgElement.src = images[currentIndex];
}

// Change image every 3 seconds
setInterval(changeImage, 3000);

// Handle form submission
document.getElementById("product-form").addEventListener("submit", (event) => {
event.preventDefault(); // Prevent page reload
alert("Product added successfully!");
alert("Wait for admin approval!");
});


//upload image

const selectImage = document.querySelector('.select-image');
          const inputFile = document.querySelector('#file');
          const imgArea = document.querySelector('.img-area');

          selectImage.addEventListener('click', function () {
              inputFile.click();
          })

          inputFile.addEventListener('change', function () {
              const image = this.files[0]
              if(image.size < 2000000) {
                  const reader = new FileReader();
                  reader.onload = ()=> {
                      const allImg = imgArea.querySelectorAll('img');
                      allImg.forEach(item=> item.remove());
                      const imgUrl = reader.result;
                      const img = document.createElement('img');
                      img.src = imgUrl;
                      imgArea.appendChild(img);
                      imgArea.classList.add('active');
                      imgArea.dataset.img = image.name;
                  }
                  reader.readAsDataURL(image);
              } else {
                  alert("Image size more than 2MB");
              }
          })