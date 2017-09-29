.class public Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;
.source "ChatRoomSelectPeopleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "multi_friend_select"
.end annotation


# instance fields
.field private Q:I

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/view/View;

.field private T:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;I)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->setOriginalSelected(Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method


# virtual methods
.method public afterViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_handle_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->Q:I

    .line 47
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->Q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 48
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->Q:I

    if-ne v0, v4, :cond_2

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->header_select_build_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->enterChatRoomList:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->faceToFaceChatroom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->QRCodeChatroom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->header_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->S:Landroid/view/View;

    .line 55
    iput-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->T:Z

    .line 57
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->Q:I

    if-ne v0, v4, :cond_3

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->faceToFaceChatroom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->QRCodeChatroom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->R:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->header_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->S:Landroid/view/View;

    .line 61
    iput-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->T:Z

    .line 63
    :cond_3
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->afterViews()V

    .line 64
    return-void
.end method

.method protected createQRCodeChatRoom()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, "\u6b63\u5728\u751f\u6210\u4e8c\u7ef4\u7801"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 90
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 88
    const-class v1, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    .line 92
    invoke-interface {v0}, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;->createGroupAndShareQrCode()Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;

    move-result-object v1

    .line 93
    iget v0, v1, Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 94
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 95
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;-><init>(Ljava/lang/String;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Ljava/util/List;)V

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->refreshGroupInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Z)Z

    .line 98
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->onCreateQRChatRoomFinish(Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 105
    return-void

    .line 99
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 103
    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->enterChatRoomList:I

    if-ne v1, v2, :cond_1

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 71
    const-class v3, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;

    .line 70
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string/jumbo v2, "extra_handle_type"

    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->Q:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 74
    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->faceToFaceChatroom:I

    if-ne v1, v2, :cond_2

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string/jumbo v2, "actionType"

    const-string/jumbo v3, "actionCreateFacingChatRoom"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "20000166"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->QRCodeChatroom:I

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->createQRCodeChatRoom()V

    goto :goto_0
.end method

.method protected onCreateQRChatRoomFinish(Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 153
    iget v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;->resultCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    const-string/jumbo v0, "key_group_id"

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "key_group_name"

    const-string/jumbo v2, "\u7fa4\u804a"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "key_group_icon"

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupImg:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "action_type"

    const-string/jumbo v2, "showQrCode"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "20000167"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroy(Landroid/os/Bundle;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;->resultDesc:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected processSureButton()V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    new-instance v1, Ljava/util/ArrayList;

    .line 172
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->confirmBuildNewChatroom(Ljava/util/List;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 109
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->T:Z

    if-eqz v0, :cond_8

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->getInputLength()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->M:Z

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 115
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->S:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->M:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->M:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->search_no_results:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->K:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->a(Landroid/database/Cursor;I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 115
    goto :goto_1

    :cond_4
    move v2, v1

    .line 119
    goto :goto_2

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->M:Z

    if-eqz v3, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    if-nez v0, :cond_7

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->K:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->a(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 131
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->K:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->M:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment;->L:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 138
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    goto :goto_0
.end method
