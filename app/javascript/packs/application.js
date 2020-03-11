import "bootstrap";

import { initHamburgerIcon } from '../nav_menu/navMenu';
import { initNewCarForm } from '../new_car/newCarForm';
import { rateYourselfHover } from '../self_rating/rating';
import { initAvatarUploadBtn } from '../sign_up/displayAvatar';
import { initDashboard } from '../dashboard/initDashboard';
import { initChart } from '../dashboard/initChart';
import { initBadgeCollect } from '../dashboard/initBadgeCollect';


rateYourselfHover();
initNewCarForm();
initHamburgerIcon();
initAvatarUploadBtn();
initDashboard();
initChart();
initBadgeCollect();