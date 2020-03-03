import $ from 'jquery';
import 'select2';

export const initSelect2 = () => {
  console.log($('select2'));
  $('.select2').select2();
}