.class public final Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;
.super Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;
.source "EmotionPreviewActivity_.java"


# instance fields
.field private handler_:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->handler_:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V

    return-void
.end method

.method private afterSetContentView_()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 45
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->ll_packageInfo:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->packageInfoLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 46
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->btn_emoi:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 47
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->mLine:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 48
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->gif_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    .line 49
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->emoi_package_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->mNameTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 50
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->img_emoi_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->mIconIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->init()V

    .line 52
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->init_(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/alipay/android/phone/emotion/R$layout;->emotion_preview_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->setContentView(I)V

    .line 38
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->onBackPressed()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->afterSetContentView_()V

    .line 58
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->afterSetContentView_()V

    .line 70
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->afterSetContentView_()V

    .line 64
    return-void
.end method

.method public final updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method
