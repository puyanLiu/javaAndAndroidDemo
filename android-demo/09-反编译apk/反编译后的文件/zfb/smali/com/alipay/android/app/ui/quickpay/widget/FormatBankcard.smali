.class public final Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/j;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->c:Landroid/text/TextWatcher;

    .line 26
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a:I

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b:Landroid/widget/EditText;

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a:I

    .line 137
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    return-void
.end method
