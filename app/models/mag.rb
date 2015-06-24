class Mag < ActiveRecord::Base
  before_save :default_values
  def default_values
    self.logo ||= 'logo'
    self.klogo ||='مطلب کوتاهی برای قرارگرفتن در کنار لوگو را در اینجا قراردهید'
    self.descrip ||='نشریه اجتماعی-سیاسی شماره اول'
    self.titr1 ||=' تیترسرمقاله'
    self.text1 ||='مطلب اول شما که می تواند سرمقاله باشد در اینجا قرار میگیرد'
    self.titr2 ||='تیتر اصلی نشریه '
    self.text2 ||='مطلب تیتر اصلی نشریه را در اینجا درج کنید'
    self.titr3 ||='تیتراولیه در صفحه دوم'
    self.text3 ||='مطلب مربوط را در اینجا درج کنید'
    self.titr4 ||='تیتر آخر'
    self.text4 ||='مطلب مربوط به تیتر آخر'
    self.modir ||='نام مدیرمسئول نشریه'
    self.sardabir ||='نام سردبیر'
    self.email ||='nashreh@example.com'

  end

end

