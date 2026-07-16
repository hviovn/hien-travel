# Mường Thanh Travel — site files

A static 3-file site (`index.html`, `styles.css`, `script.js`) for a Điện Biên Phủ travel agency running tours in the Mường Thanh valley and overland trips across the Tây Trang border into Laos. No build step, no dependencies beyond Google Fonts.

## Publish to GitHub Pages

1. Create a new GitHub repository (public, unless you have GitHub Pro/Team for a private one).
2. Upload these three files (`index.html`, `styles.css`, `script.js`) to the root of the repo — via the GitHub web UI ("Add file → Upload files") or `git push`.
3. In the repo, go to **Settings → Pages**.
4. Under **Build and deployment → Source**, choose **Deploy from a branch**.
5. Pick branch `main` (or `master`) and folder `/ (root)`, then **Save**.
6. Wait a minute or two, then your site will be live at:
   `https://<your-username>.github.io/<repo-name>/`

If you want it at the root of `<your-username>.github.io` with no sub-path, name the repository exactly `<your-username>.github.io`.

## Things to replace before publishing

Search the files for these placeholders and swap in your real details:

- `hello@muongthanhtravel.example` — real contact email
- `+84 230 123 4567` — real phone / Zalo number
- `Đường 7/5, P. Mường Thanh, TP. Điện Biên Phủ, Việt Nam` — real office address
- Tour prices and durations — currently indicative placeholder figures
- Traveller quotes in the "From the road" section are placeholder copy — swap in real reviews once you have them
- The contact section is informational only (no working form, since GitHub Pages can't run server code). If you want a working enquiry form, connect it to a service like Formspree or Web3Forms and point the form's `action` at their endpoint.

## Structure

- `index.html` — all page content and sections
- `styles.css` — full design system (colors, type, layout) as CSS custom properties at the top
- `script.js` — mobile nav toggle + scroll-reveal animation, both progressive enhancements (site works fine without JS)

All illustrations are inline SVG (no image files to host), and the hero map is a hand-built route diagram from Điện Biên Phủ through the Mường Thanh valley to the Tây Trang border and into Laos.
