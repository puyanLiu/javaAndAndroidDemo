.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$a;,
        Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Ljava/lang/String;

.field private M:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Landroid/app/Activity;

.field private W:Z

.field private X:Ljava/lang/String;

.field private Y:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

.field private Z:Z

.field private aa:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    .line 87
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Q:Z

    .line 93
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->W:Z

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->X:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Z:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->aa:I

    .line 103
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->U:Z

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->aa:I

    .line 105
    return-void
.end method

.method private Q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 750
    instance-of v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const-string/jumbo v0, ""

    .line 757
    :goto_0
    return-object v0

    .line 755
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->aa:I

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 757
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private R()Z
    .locals 2

    .prologue
    .line 878
    instance-of v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    if-nez v0, :cond_0

    const-string/jumbo v0, "money"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    :cond_0
    const/4 v0, 0x1

    .line 882
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private S()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;
    .locals 3

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->A()Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    move-result-object v0

    .line 961
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->PARENT:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    .line 962
    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v2, :cond_1

    .line 963
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    .line 964
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->BACKGROUND:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    .line 970
    :goto_0
    return-object v0

    .line 966
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->PRE:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V

    return-void
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 800
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->removeIcon()V

    .line 806
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 807
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 808
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    const-string/jumbo v4, "card_no"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Z:Z

    if-eqz v3, :cond_3

    .line 810
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.eg.android.AlipayGphoneRC"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 814
    :cond_2
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/w;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/w;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    .line 826
    :goto_1
    const-string/jumbo v1, "mini_icon_camera"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 844
    :goto_2
    if-eqz v0, :cond_0

    .line 845
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/uielement/x;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/x;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V

    goto :goto_0

    .line 829
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    const-string/jumbo v3, "cvv"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 830
    const-string/jumbo v0, "mini_page_card_safecode_info"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 833
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ShowSafeCode:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_2

    .line 835
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    const-string/jumbo v3, "card_validate"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    const-string/jumbo v0, "mini_page_card_safecode_info"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 839
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ShowExpiryDate:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Y:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V
    .locals 2

    .prologue
    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "mini_icon_clean"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/v;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/v;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setDelIconShow(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V
    .locals 6

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->All:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    const/4 v3, 0x0

    instance-of v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->All:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$a;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$a;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    iget-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->d:Z

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;Landroid/app/Activity;Landroid/widget/EditText;Landroid/text/method/KeyListener;ZLcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "money"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->Money:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/keyboard/MoneyKeyListener;->a()Lcom/alipay/android/app/ui/quickpay/keyboard/MoneyKeyListener;

    move-result-object v3

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->J:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final G()Z
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-nez v0, :cond_0

    .line 986
    const/4 v0, 0x0

    .line 988
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public final M()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->aa:I

    return v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected O()V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    .line 573
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    const-string/jumbo v0, "num"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 579
    :cond_2
    const-string/jumbo v0, "en"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 581
    :cond_3
    const-string/jumbo v0, "cert"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 583
    :cond_4
    const-string/jumbo v0, "pinyin"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    .line 585
    :cond_5
    const-string/jumbo v0, "email"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setInputType(I)V

    goto :goto_0
.end method

.method protected final P()V
    .locals 2

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 70
    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    .line 155
    const-string/jumbo v0, "mini_input_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->I:Landroid/widget/LinearLayout;

    .line 158
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    :goto_0
    instance-of v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    if-eqz v0, :cond_5

    .line 166
    const-string/jumbo v0, "mini_input_et_password"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/CustomPasswordEditText;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setVisibility(I)V

    .line 175
    :goto_1
    const-string/jumbo v0, "mini_input_error_msg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->J:Landroid/widget/TextView;

    .line 177
    const-string/jumbo v0, "mini_input_lable"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->U:Z

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->d:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    .line 192
    :goto_4
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->d:Z

    if-eqz v1, :cond_2

    .line 193
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v2

    .line 194
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    .line 195
    if-le v2, v1, :cond_2

    move v0, v1

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->L:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    .line 201
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/t;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/t;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 216
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->B:Z

    if-eqz v0, :cond_9

    .line 262
    :goto_5
    return-void

    .line 160
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->d:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    const-string/jumbo v0, "mini_input_bg_corner"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 171
    :cond_5
    const-string/jumbo v0, "mini_input_et"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setVisibility(I)V

    goto/16 :goto_1

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 185
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 189
    :cond_8
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    goto :goto_4

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    const-string/jumbo v1, "card_validate"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 220
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setFocusable(Z)V

    .line 221
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setFocusable(Z)V

    .line 222
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setFocusableInTouchMode(Z)V

    .line 223
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setCursorVisible(Z)V

    .line 224
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->A()Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;-><init>(Landroid/content/Context;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Y:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    .line 226
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/z;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/z;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :goto_6
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 236
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    const-string/jumbo v1, "login_mobile"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 240
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 242
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_b
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 250
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O()V

    .line 252
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a(Landroid/widget/EditText;)V

    :cond_d
    const-string/jumbo v0, "cvv"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_e
    const-string/jumbo v0, "mobile"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->a(Landroid/widget/EditText;)V

    .line 254
    :cond_f
    instance-of v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput$TextWatcherImpl;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 256
    :goto_8
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    :try_start_2
    const-class v0, Landroid/widget/EditText;

    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    :try_start_3
    const-class v0, Landroid/widget/EditText;

    const-string/jumbo v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 258
    :cond_10
    :goto_a
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/aa;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/aa;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnDoneListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ab;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ab;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ac;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ac;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setCustomOnFocusChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ad;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ad;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_6

    .line 254
    :cond_11
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ag;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ag;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_7
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 110
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->L:Ljava/lang/String;

    .line 113
    :cond_0
    const-string/jumbo v0, "onload"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string/jumbo v0, "onload"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->M:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 116
    :cond_1
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->N:Ljava/lang/String;

    .line 119
    :cond_2
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->O:Ljava/lang/String;

    .line 122
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    .line 128
    :cond_4
    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S:Ljava/lang/String;

    .line 131
    :cond_5
    const-string/jumbo v0, "encoded"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    const-string/jumbo v0, "encoded"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->U:Z

    .line 134
    :cond_6
    const-string/jumbo v0, "format_msg"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    const-string/jumbo v0, "format_msg"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->T:Ljava/lang/String;

    .line 137
    :cond_7
    const-string/jumbo v0, "must"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    const-string/jumbo v0, "must"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Q:Z

    .line 140
    :cond_8
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 766
    iput-boolean p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->W:Z

    .line 767
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->W:Z

    if-eqz v0, :cond_0

    .line 768
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->X:Ljava/lang/String;

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/u;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/u;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    .line 778
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 392
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Q:Z

    if-nez v1, :cond_0

    .line 403
    :goto_0
    return v0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H()Z

    move-result v1

    if-nez v1, :cond_2

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 544
    if-lt v0, p1, :cond_0

    move p1, v0

    .line 552
    :goto_0
    return p1

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0

    .line 550
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 409
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Q:Z

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v2

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    .line 413
    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Q()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->A()Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    move-result-object v0

    .line 421
    instance-of v3, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v3, :cond_6

    .line 422
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    const-string/jumbo v3, "certtype"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "certno"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 425
    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    .line 426
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "A"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 432
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 436
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 437
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 438
    if-nez v1, :cond_5

    .line 439
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->T:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 441
    const-string/jumbo v3, "mini_format_error"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->T:Ljava/lang/String;

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    .line 446
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->T:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    move v2, v1

    .line 451
    goto/16 :goto_0

    .line 448
    :cond_5
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v4, "mini_text_color_gray"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 452
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 4

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 462
    if-nez v0, :cond_1

    .line 463
    const/4 v0, 0x0

    .line 490
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Q()Ljava/lang/String;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    const-string/jumbo v3, "card_validate"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 475
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Y:Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;

    invoke-virtual {v3}, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_1
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->W:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->X:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    const-string/jumbo v1, "local"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_3
    instance-of v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    if-eqz v1, :cond_0

    .line 483
    const-string/jumbo v1, "encryptType"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 477
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-nez v0, :cond_0

    .line 981
    :goto_0
    return-void

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 513
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    .line 515
    :try_start_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->aa:I

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->clear(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->S()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    .line 521
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 523
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->hiddenPopHint()V

    .line 524
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->J:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->clear()V

    .line 527
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->R:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    .line 528
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    .line 529
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->N:Ljava/lang/String;

    .line 530
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->M:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 531
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->V:Landroid/app/Activity;

    .line 532
    return-void

    .line 516
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->B:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/af;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/af;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 864
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->Z:Z

    .line 865
    return-void
.end method

.method public event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Z
    .locals 3

    .prologue
    .line 995
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    .line 996
    if-nez v0, :cond_0

    .line 997
    const/4 v0, 0x1

    .line 998
    const-string/jumbo v1, "onchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/uielement/y;

    invoke-direct {v2, p0, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/y;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lorg/luaj/vm2/LuaValue;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1026
    :cond_0
    :goto_0
    return v0

    .line 1022
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 369
    instance-of v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;

    if-eqz v0, :cond_0

    .line 370
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->aa:I

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->clear(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public final j()Landroid/view/View;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    return-object v0
.end method

.method protected p()I
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "mini_ui_lable_input"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final q()V
    .locals 4

    .prologue
    .line 377
    const-string/jumbo v0, "card_no"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cvv"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "card_validate"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->P:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->M:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->M:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v1

    .line 384
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 385
    invoke-virtual {p0, p0, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_2
    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    return-object v0
.end method
