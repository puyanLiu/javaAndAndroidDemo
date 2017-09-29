.class public final Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;
.source "PersonalProfileActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final Y:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;-><init>()V

    .line 33
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->Y:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->refreshGroupNickName()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;I)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->updateGenericButton(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->sendVerify(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setOrCancelStarFriend(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->refreshUi()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setOrCancelBlacklistByRpc(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->loadGroupNickName()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->loadReplyMsg()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->acceptVerificationByRpc()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->loadFriendInfo()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->deleteFriend()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->addFriend()V

    return-void
.end method


# virtual methods
.method public final acceptVerificationByRpc()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/av;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/av;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 230
    return-void
.end method

.method public final addFriend()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/ao;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ao;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 294
    return-void
.end method

.method public final deleteFriend()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/an;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/an;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 278
    return-void
.end method

.method public final loadFriendInfo()V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/aw;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/aw;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 246
    return-void
.end method

.method public final loadGroupNickName()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/at;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/at;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 198
    return-void
.end method

.method public final loadReplyMsg()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/au;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/au;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 214
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->Y:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 38
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 39
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 41
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->layout_personal_profile:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->setContentView(I)V

    .line 42
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_credit_rating:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 69
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->divider_reply:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->x:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 70
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->personal_album:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->G:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 71
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_pic1:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->H:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_sign:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->V:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_head:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 74
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_pic3:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->J:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 75
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_sex:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_change_comment:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 77
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_pic2:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->I:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 78
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_real_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 79
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_verification:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 80
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->ll_real_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 81
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->logout_layout:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->N:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 82
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_zfb_nickname:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 83
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_report_big:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->E:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 84
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->items_for_friend:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->P:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 85
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_reply:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 86
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 87
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_video_icon2:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->L:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 88
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_add_to_contact:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 89
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_display_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 90
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_sign:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->S:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 91
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_privacy_setting:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 92
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->ll_request_message:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->v:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 93
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_send_message:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 94
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_pass_verification:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 95
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_report:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->r:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 96
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_origin:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->T:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 97
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_area:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->R:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 98
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_origin:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->W:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 99
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_area:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->U:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 100
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_add_to_blacklist:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->C:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 101
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_zfb_account:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 102
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_more:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->O:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 103
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_credit_rating:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->A:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 104
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->ll_blacklist_and_report:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->B:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 105
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_zfb_account:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 106
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_group_nickname:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 107
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_modify_my_info:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->F:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 108
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_star:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 109
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->list_request_message:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/view/AutoHeightListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->u:Lcom/alipay/mobile/socialsdk/contact/view/AutoHeightListView;

    .line 110
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_level:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 111
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_in_blacklist_tips:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->D:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 112
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_transfer_accounts:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 113
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_level:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->z:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 114
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_video_icon1:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->K:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 115
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->items_for_stranger:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->Q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 116
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->iv_video_icon3:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->M:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->a()V

    .line 118
    return-void
.end method

.method public final refreshGroupNickName()V
    .locals 4

    .prologue
    .line 122
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/am;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/am;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 134
    return-void
.end method

.method public final refreshUi()V
    .locals 4

    .prologue
    .line 138
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/aq;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/aq;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 150
    return-void
.end method

.method public final sendVerify(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/ax;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ax;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 262
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setContentView(I)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->Y:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 52
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setContentView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->Y:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 64
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->Y:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 58
    return-void
.end method

.method public final setOrCancelBlacklistByRpc(Z)V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/ap;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ap;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 310
    return-void
.end method

.method public final setOrCancelStarFriend(Z)V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/as;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/as;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 182
    return-void
.end method

.method public final updateGenericButton(I)V
    .locals 4

    .prologue
    .line 154
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/ar;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ar;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;I)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 166
    return-void
.end method
