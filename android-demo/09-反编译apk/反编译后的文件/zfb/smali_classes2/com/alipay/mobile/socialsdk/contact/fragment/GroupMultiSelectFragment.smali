.class public Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;
.source "GroupMultiSelectFragment.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "group_multi_select"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "multi_choose_widget"
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->s:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->t:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->s:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    return-object v0
.end method


# virtual methods
.method protected afterViews()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 53
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->k:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 64
    :cond_3
    const-string/jumbo v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->j:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "extra_origin_user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->b:Ljava/util/List;

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ah;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ah;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->blue_button_selector:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/TitlebarGenericButtonUtil;->setGenericButtonBg(Lcom/alipay/mobile/commonui/widget/APTitleBar;I)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ai;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ai;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->setOnIconSelectListener(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 102
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->prepareDataSource()V

    goto/16 :goto_0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->o:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_1
    return-void
.end method

.method protected getListAdapter()Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 118
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->onDestroy()V

    .line 119
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected processSureButton()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 139
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 141
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 139
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->m:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->m:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->selectItem(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->getInputLength()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->setVisibility(I)V

    .line 205
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->q:Z

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->p:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->setOriginalSelected(Ljava/util/List;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->q:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->o:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->s:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 164
    new-instance v2, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->s:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->t:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->q:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->u:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->refreshSelected(Ljava/util/Set;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->refreshFriendChooseWidget(Ljava/util/List;)V

    .line 177
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->updateSureButtonStatus()V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->s:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->t:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected updateSureButtonStatus()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/aj;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/aj;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
