.class public Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->b:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a:Ljava/lang/String;

    .line 41
    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->e:Z

    .line 52
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v1, "msp_guides"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    .line 55
    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "version"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "info"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "switch"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "desc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    :cond_0
    return-void
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->f:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->f:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    .line 48
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->f:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->e:Z

    if-eqz v0, :cond_0

    .line 145
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    const-string/jumbo v1, "mini_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 149
    iput-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->e:Z

    .line 150
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 78
    .line 79
    instance-of v0, p3, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v0, :cond_1

    move-object v0, p3

    .line 80
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v2

    .line 84
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e()V

    .line 141
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    instance-of v0, p3, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    if-eqz v0, :cond_5

    move-object v0, p3

    .line 82
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->v()Landroid/widget/EditText;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_2
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    iput-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->e:Z

    .line 107
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 113
    const-string/jumbo v0, "mini_content_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    if-nez v1, :cond_0

    .line 120
    const-string/jumbo v1, "mini_guide_layout_paysetting"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    const-string/jumbo v1, "button_img"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    .line 124
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/l;

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/window/l;-><init>(Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;Landroid/widget/EditText;Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->c:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    if-eqz p3, :cond_0

    .line 98
    invoke-virtual {p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e()V

    goto/16 :goto_1

    :cond_5
    move-object v2, v7

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->e:Z

    return v0
.end method
