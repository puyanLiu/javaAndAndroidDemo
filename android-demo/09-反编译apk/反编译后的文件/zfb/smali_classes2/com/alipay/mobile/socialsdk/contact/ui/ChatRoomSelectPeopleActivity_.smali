.class public final Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;
.super Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;
.source "ChatRoomSelectPeopleActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final b:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;-><init>()V

    .line 29
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->handleChatRoomCreateResult(Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->sendChatRoomRpcRequest(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleChatRoomCreateResult(Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/l;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 82
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 34
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 35
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 37
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->fragment_container_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->setContentView(I)V

    .line 38
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->a()V

    .line 66
    return-void
.end method

.method public final sendChatRoomRpcRequest(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/m;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/contact/ui/m;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 98
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->setContentView(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 48
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 60
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->b:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 54
    return-void
.end method
