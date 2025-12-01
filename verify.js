const { chromium } = require('playwright-chromium');

(async () => {
  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto('http://localhost:3000/users/sign_in');
  await page.screenshot({ path: 'login_page.png' });
  await browser.close();
})();
