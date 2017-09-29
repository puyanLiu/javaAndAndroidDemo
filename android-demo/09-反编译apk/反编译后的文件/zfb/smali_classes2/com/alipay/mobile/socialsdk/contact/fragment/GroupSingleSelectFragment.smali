.class public Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;
.super Landroid/support/v4/app/Fragment;
.source "GroupSingleSelectFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "group_single_select"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

.field protected c:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchBar"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APEditText;

.field protected e:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_contacts_list"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_name"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field protected h:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

.field protected i:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Landroid/os/Handler;

.field protected m:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

.field protected n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected o:Landroid/database/Cursor;

.field protected p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Z

.field protected r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->p:Ljava/util/HashMap;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->q:Z

    .line 71
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/aq;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/aq;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->r:Ljava/lang/Runnable;

    .line 47
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u7fa4\u5355\u9009\u9875\u9762\u641c\u7d22\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected afterViews()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 91
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->k:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 102
    :cond_3
    const-string/jumbo v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->j:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 117
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->prepareDataSource()V

    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_1
    return-void
.end method

.method protected getContactSerched(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->p:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->doSearchGroupMembersCursor(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 214
    :cond_0
    return-void
.end method

.method protected getInputLength()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getListAdapter()Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->l:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 141
    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 152
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->getListAdapter()Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 219
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    const-class v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->cursor2VO(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 224
    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 225
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 228
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ar;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ar;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 135
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 134
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateAccountSearchIndexAsync()V

    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method protected prepareDataSource()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 170
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 171
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->p:Ljava/util/HashMap;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->p:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->getGroupMembersCursor(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 175
    return-void
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->getInputLength()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 191
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->q:Z

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->p:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->a:Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->q:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberSingleCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->o:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 234
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 236
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 234
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v0

    .line 238
    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->m:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->m:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->e:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->selectItem(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->m:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    .line 166
    return-void
.end method
