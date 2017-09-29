.class public final Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;
.source "FriendVerifyActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final h:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;-><init>()V

    .line 28
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->setMyName()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->sendVerify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 34
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 36
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->add_friend_verify_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->setContentView(I)V

    .line 37
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->hiderealname:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    .line 64
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->verify_msg_edit:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    .line 65
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->add_friend_verify_title_bar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->a()V

    .line 67
    return-void
.end method

.method public final sendVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 71
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/t;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/contact/ui/t;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 83
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->setContentView(I)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 47
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 59
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->h:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 53
    return-void
.end method

.method public final setMyName()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/u;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/u;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 99
    return-void
.end method
