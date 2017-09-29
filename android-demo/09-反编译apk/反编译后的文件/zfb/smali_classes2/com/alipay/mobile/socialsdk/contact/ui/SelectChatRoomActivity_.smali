.class public final Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;
.source "SelectChatRoomActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final e:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;-><init>()V

    .line 29
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;->initListView()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;->loadData()V

    return-void
.end method


# virtual methods
.method public final initListView()V
    .locals 4

    .prologue
    .line 72
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bi;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bi;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 84
    return-void
.end method

.method public final loadData()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/bj;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/bj;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 100
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 34
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 35
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 37
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->layout_share_select_chatroom:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->setContentView(I)V

    .line 38
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->chatRoomList:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 65
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tips_no_chat_room:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 66
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->afterViews()V

    .line 68
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;->setContentView(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 48
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 60
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->e:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 54
    return-void
.end method
