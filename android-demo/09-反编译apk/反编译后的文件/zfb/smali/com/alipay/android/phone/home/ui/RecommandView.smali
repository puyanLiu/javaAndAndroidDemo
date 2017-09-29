.class public Lcom/alipay/android/phone/home/ui/RecommandView;
.super Landroid/widget/FrameLayout;
.source "RecommandView.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private f:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->j:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->j:Landroid/content/Context;

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->f:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/RecommandView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$color;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/RecommandView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->M:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 43
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->P:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 44
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->N:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 45
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->O:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 47
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->Q:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 48
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->T:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 49
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->R:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 50
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->S:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/RecommandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 52
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 54
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v4, 0x30

    .line 71
    invoke-virtual {p1, p5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1, p5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {p1, p5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 75
    sget v3, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, p4

    move v5, v4

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 76
    return-void
.end method


# virtual methods
.method public setData(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 6

    .prologue
    .line 57
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    const-string/jumbo v5, "strategyStage"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/home/ui/RecommandView;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    const-string/jumbo v5, "strategyStage"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/home/ui/RecommandView;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->j:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/content/Context;)V

    .line 62
    new-instance v1, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->j:Landroid/content/Context;

    invoke-direct {v1, p2, v2}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/content/Context;)V

    .line 63
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/RecommandView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_0
    return-void
.end method
