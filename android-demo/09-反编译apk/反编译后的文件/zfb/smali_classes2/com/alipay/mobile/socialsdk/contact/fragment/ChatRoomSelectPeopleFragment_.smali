.class public final Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;
.source "ChatRoomSelectPeopleFragment_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final Q:Lorg/androidannotations/api/view/OnViewChangedNotifier;

.field private R:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;-><init>()V

    .line 36
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->Q:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->updateSureButtonStatus()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->onCreateQRChatRoomFinish(Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->getContactSearched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$401(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->createQRCodeChatRoom()V

    return-void
.end method


# virtual methods
.method public final closeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/d;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/d;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 162
    return-void
.end method

.method public final createQRCodeChatRoom()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/f;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/f;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 178
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->R:Landroid/view/View;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->R:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContactSearched(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/c;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/c;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 135
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->Q:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 42
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 45
    return-void
.end method

.method public final onCreateQRChatRoomFinish(Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V
    .locals 4

    .prologue
    .line 107
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/b;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 119
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->R:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->R:Landroid/view/View;

    if-nez v0, :cond_0

    .line 59
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->multi_friend_select:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->R:Landroid/view/View;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->R:Landroid/view/View;

    return-object v0
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->emptyAccountContent:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 77
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title_name:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 78
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->selectMaxTipsBanner:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 79
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->multi_choose_widget:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    .line 80
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->emptyResults:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 81
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_tips:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 82
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->btn_close_tip:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 83
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->searchBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 84
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->contacts_letters_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    .line 85
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->account_contacts_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->afterViews()V

    .line 87
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->Q:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 72
    return-void
.end method

.method public final updateSureButtonStatus()V
    .locals 4

    .prologue
    .line 91
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/a;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 103
    return-void
.end method
