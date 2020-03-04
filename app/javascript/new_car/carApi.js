export const fetchModels = async (brand, year) => {
  // https://www.carqueryapi.com/api/0.3/?cmd=getModels&make=${brand}&year=${year}
  const res = await fetch(`https://www.carqueryapi.com/api/0.3/?cmd=getModels&make=${brand}&year=${year}`);
  const data = await res.json();
  console.log(data);
}