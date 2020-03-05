import "bootstrap";

import { initHamburgerIcon } from '../nav_menu/navMenu';
import { initNewCarForm } from '../new_car/newCarForm';
import { rateYourselfHover } from '../self_rating/rating';
import { initAvatarUploadBtn } from '../sign_up/displayAvatar';
import { initDashboard } from '../dashboard/initDashboard';


rateYourselfHover();
initNewCarForm();
initHamburgerIcon();
initAvatarUploadBtn();
initDashboard();