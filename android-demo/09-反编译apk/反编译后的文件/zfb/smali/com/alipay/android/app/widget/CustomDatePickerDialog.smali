.class public Lcom/alipay/android/app/widget/CustomDatePickerDialog;
.super Landroid/app/DatePickerDialog;


# instance fields
.field private a:Ljava/util/Date;

.field private b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 29
    return-void
.end method

.method private static a(Landroid/widget/DatePicker;Ljava/util/Calendar;)V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 48
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 49
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 50
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    .line 59
    return-void
.end method

.method public final b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->b:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 36
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 39
    invoke-static {p1, v0}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a(Landroid/widget/DatePicker;Ljava/util/Calendar;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->b:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->b:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 42
    invoke-static {p1, v0}, Lcom/alipay/android/app/widget/CustomDatePickerDialog;->a(Landroid/widget/DatePicker;Ljava/util/Calendar;)V

    goto :goto_0
.end method
