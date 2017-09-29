.class public Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;
    }
.end annotation


# instance fields
.field protected final REP_DELAY:I

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field protected maxYear:I

.field protected minYear:I

.field protected monthDownBtn:Landroid/widget/Button;

.field protected monthEditText:Landroid/widget/TextView;

.field protected monthUpBtn:Landroid/widget/Button;

.field protected rptUpdateHandler:Landroid/os/Handler;

.field protected yearDownBtn:Landroid/widget/Button;

.field protected yearEditText:Landroid/widget/TextView;

.field protected yearUpBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->REP_DELAY:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a:Z

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->b:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->c:Z

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->d:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->e:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->REP_DELAY:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    .line 39
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a:Z

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->b:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->c:Z

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->d:Z

    .line 44
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->e:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_year_month_picker"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->d:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->d:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->e:Z

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->e:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->b:Z

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->b:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->c:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->c:Z

    return p1
.end method


# virtual methods
.method public decrement(Z)V
    .locals 0

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->decrementYear()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->decrementMonth()V

    goto :goto_0
.end method

.method protected decrementMonth()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 258
    add-int/lit8 v0, v0, -0x1

    .line 259
    if-gtz v0, :cond_0

    .line 260
    const/16 v0, 0xc

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method protected decrementYear()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    add-int/lit8 v0, v0, -0x1

    .line 250
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    if-ge v0, v1, :cond_0

    .line 251
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->maxYear:I

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public disableBeforeYear()V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a:Z

    .line 110
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->f:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->f:I

    :goto_0
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    .line 111
    return-void

    .line 110
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    goto :goto_0
.end method

.method public enableBeforeYear()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a:Z

    .line 106
    return-void
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonthStr(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    if-nez p1, :cond_0

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected increment(Z)V
    .locals 0

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->incrementYear()V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->incrementMonth()V

    goto :goto_0
.end method

.method protected incrementMonth()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method protected incrementYear()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 219
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->maxYear:I

    if-le v0, v1, :cond_0

    .line 220
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    const-string/jumbo v0, "year_up_btn"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    .line 62
    const-string/jumbo v0, "year_down_btn"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    .line 63
    const-string/jumbo v0, "year_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    .line 65
    const-string/jumbo v0, "month_up_btn"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    .line 66
    const-string/jumbo v0, "month_down_btn"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    .line 67
    const-string/jumbo v0, "month_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setDefaultYearLimit()V

    .line 76
    return-void
.end method

.method protected setButtonAction(Landroid/widget/Button;ZZ)V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/v;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/android/app/ui/quickpay/widget/v;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/w;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/w;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/x;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    return-void
.end method

.method public setCurrentDate()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 94
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setYearMonth(II)V

    .line 97
    return-void
.end method

.method protected setDefaultYearLimit()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->f:I

    .line 85
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->f:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    .line 86
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    .line 87
    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->maxYear:I

    .line 88
    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->maxYear:I

    .line 123
    return-void
.end method

.method public setMinYear(I)V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a:Z

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->f:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    goto :goto_0
.end method

.method public setYearMonth(II)V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->maxYear:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->minYear:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method
