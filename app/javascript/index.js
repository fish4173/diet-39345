window.addEventListener('load', function(){
    const metaboField = document.getElementById('metabo');
    const breakfastField = document.getElementById('breakfast');
    const lunchField = document.getElementById('lunch');
    const dinnerField = document.getElementById('dinner');
    const snackField = document.getElementById('snack');
    const motionField = document.getElementById('motion');
    const totalCalField = document.getElementById('total_cal');
    const totalKgField = document.getElementById('total_kg');



    // 値が変更された時に合計を計算して total_cal と total_kg の値を更新する関数
    function updateTotalValues() {
      const metabo = parseFloat(metaboField.value) || 0;
      const breakfast = parseFloat(breakfastField.value) || 0;
      const lunch = parseFloat(lunchField.value) || 0;
      const dinner = parseFloat(dinnerField.value) || 0;
      const snack = parseFloat(snackField.value) || 0;
      const motion = parseFloat(motionField.value) || 0;
      const totalCal = (breakfast + lunch + dinner + snack - motion)-metabo;
      // const totalKg = Math.floor(totalCal / 7700);
      const totalKg = totalCal / 7700;
      totalCalField.value = totalCal;
      totalKgField.value = totalKg;
    }

    // フィールドの値が変更されたら updateTotalValues を呼び出す
    breakfastField.addEventListener('change', updateTotalValues);
    lunchField.addEventListener('change', updateTotalValues);
    dinnerField.addEventListener('change', updateTotalValues);
    snackField.addEventListener('change', updateTotalValues);
    motionField.addEventListener('change', updateTotalValues);
});
