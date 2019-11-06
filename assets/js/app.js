
import css from '../css/app.scss';

import './vendor/stimulus';
import './vendor/turbolinks';

import 'phoenix_html';
import LiveSocket from 'phoenix_live_view';

let liveSocket = new LiveSocket('/live');
liveSocket.connet();
