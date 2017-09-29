.class public Lcom/alipay/asset/common/view/AccountInfoView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "AccountInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private g:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field private h:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

.field private n:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private o:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field private p:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private q:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field private r:Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->a:I

    .line 139
    const/4 v2, 0x1

    .line 138
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 147
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->b:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->aa:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 150
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 151
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 153
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->L:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 154
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->R:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 155
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->ah:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->i:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->ae:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 160
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->ag:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/RightTextFirstLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

    .line 161
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->ad:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 162
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->o:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 163
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->af:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 164
    new-instance v1, Lcom/alipay/asset/common/view/a;

    invoke-direct {v1, p0}, Lcom/alipay/asset/common/view/a;-><init>(Lcom/alipay/asset/common/view/AccountInfoView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setOnBadgeChangeListener(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;)V

    .line 170
    invoke-static {p1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 171
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->p:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 173
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->G:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->j:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->j:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->h:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->j:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->X:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$string;->y:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 176
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->X:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$string;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 179
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 184
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 182
    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->q:Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 185
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/asset/common/view/AccountInfoView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 313
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/alipay/asset/common/view/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/asset/common/view/c;-><init>(Lcom/alipay/asset/common/view/AccountInfoView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/alipay/asset/common/view/AccountInfoView;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method


# virtual methods
.method public bindAvatarFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->o:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    .line 189
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->o:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 332
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 333
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->i:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 338
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000004"

    .line 339
    const-string/jumbo v2, "20000247"

    const/4 v3, 0x0

    .line 338
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->b:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->q:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->v:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->j:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 344
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000261&actionType=userFeeds&uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string/jumbo v2, "&lid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->q:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 352
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->q:Lcom/alipay/mobile/framework/service/common/SchemeService;

    const-string/jumbo v1, "alipays://platformapi/startapp?appId=20000245"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-ne p1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->r:Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->r:Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;

    invoke-interface {v0}, Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;->a()V

    goto/16 :goto_0
.end method

.method public refreshUserData()V
    .locals 14

    .prologue
    const/16 v13, 0xa0

    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 228
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v5

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AccountInfoView"

    const-string/jumbo v2, "refreshUserData"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    if-nez v5, :cond_1

    .line 232
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AccountInfoView"

    const-string/jumbo v2, "userinfo is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    if-nez v5, :cond_3

    const-string/jumbo v0, ""

    move-object v4, v0

    .line 237
    :goto_1
    if-nez v5, :cond_4

    const-string/jumbo v0, ""

    move-object v3, v0

    .line 238
    :goto_2
    if-nez v5, :cond_5

    const-string/jumbo v0, ""

    move-object v2, v0

    .line 239
    :goto_3
    if-nez v5, :cond_6

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 240
    :goto_4
    if-nez v5, :cond_7

    const-string/jumbo v0, ""

    .line 242
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "AccountInfoView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refreshUserData----userInfo = [showAvatar:]"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "],[showLogonId:]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "AccountInfoView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refreshUserData----userName = [showName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    const-string/jumbo v8, "],[showNick:]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "],[showcustomerType:]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v5, p0, Lcom/alipay/asset/common/view/AccountInfoView;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v6, Lcom/alipay/android/phone/wealth/home/R$drawable;->a:I

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 249
    iget-object v5, p0, Lcom/alipay/asset/common/view/AccountInfoView;->p:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    new-instance v6, Lcom/alipay/asset/common/view/b;

    invoke-direct {v6, p0}, Lcom/alipay/asset/common/view/b;-><init>(Lcom/alipay/asset/common/view/AccountInfoView;)V

    invoke-virtual {v5, v1, v6, v13, v13}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 283
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    const-string/jumbo v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 285
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

    invoke-virtual {v1, v9, v2, v10}, Lcom/alipay/asset/common/view/RightTextFirstLayout;->setNewText(ILjava/lang/String;Z)V

    .line 286
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

    invoke-virtual {v1, v11, v12, v9}, Lcom/alipay/asset/common/view/RightTextFirstLayout;->setNewText(ILjava/lang/String;Z)V

    .line 308
    :cond_2
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 236
    :cond_3
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getCustomerType()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1

    .line 237
    :cond_4
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getNick()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    .line 238
    :cond_5
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getShowName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_3

    .line 239
    :cond_6
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    .line 240
    :cond_7
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 278
    :cond_8
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$drawable;->a:I

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_6

    .line 288
    :cond_9
    const-string/jumbo v1, "2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 291
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

    invoke-virtual {v1, v9, v2, v10}, Lcom/alipay/asset/common/view/RightTextFirstLayout;->setNewText(ILjava/lang/String;Z)V

    .line 297
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 298
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

    invoke-virtual {v1, v11, v12, v9}, Lcom/alipay/asset/common/view/RightTextFirstLayout;->setNewText(ILjava/lang/String;Z)V

    goto :goto_7

    .line 294
    :cond_a
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

    invoke-virtual {v1, v11, v12, v10}, Lcom/alipay/asset/common/view/RightTextFirstLayout;->setNewText(ILjava/lang/String;Z)V

    goto :goto_8

    .line 300
    :cond_b
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->m:Lcom/alipay/asset/common/view/RightTextFirstLayout;

    .line 301
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->B:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v9, v2, v9}, Lcom/alipay/asset/common/view/RightTextFirstLayout;->setNewText(ILjava/lang/String;Z)V

    goto :goto_7
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public setAccountInfoList(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 86
    iput-object p1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/List;

    .line 87
    if-nez p1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->reset()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->o:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$dimen;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setAutoTextSize(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "isInsuOpen"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "isInsuOpen"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$color;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->e:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_2
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    iput-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AccountInfoView"

    const-string/jumbo v3, "bindWidgetFlagView, widgetId"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->k:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$color;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->d:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    goto/16 :goto_0
.end method

.method public setAmountHidden(Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoList(Ljava/util/List;Z)V

    .line 100
    return-void
.end method

.method public setShowAmountClickListener(Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->r:Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;

    .line 209
    return-void
.end method

.method public updateAmountHiddenState()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c(Ljava/lang/String;)Z

    move-result v0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->i:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0
.end method
