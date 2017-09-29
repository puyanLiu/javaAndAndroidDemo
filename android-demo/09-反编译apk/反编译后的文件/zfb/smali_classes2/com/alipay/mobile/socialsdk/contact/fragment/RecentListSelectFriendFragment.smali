.class public Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;
.source "RecentListSelectFriendFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "recent_friend_single_select"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_name"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchBar"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APEditText;

.field protected d:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_contacts_list"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyResults"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyAccountContent"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field protected h:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

.field protected i:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field protected j:Landroid/os/Handler;

.field protected k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

.field protected l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

.field protected m:Landroid/database/Cursor;

.field protected n:Z

.field protected o:Ljava/lang/Runnable;

.field private p:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private r:Z

.field private s:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cn;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cn;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->o:Ljava/lang/Runnable;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->r:Z

    .line 39
    return-void
.end method

.method private a(Landroid/database/Cursor;Z)V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->notifyDataSetChanged()V

    .line 208
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->s:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u901a\u8baf\u5f55\u641c\u7d22\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->m:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->m:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected afterViews()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->s:Landroid/os/Bundle;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->s:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->s:Landroid/os/Bundle;

    const-string/jumbo v1, "withMe"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->n:Z

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->s:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->s:Landroid/os/Bundle;

    const-string/jumbo v1, "show_contact_list"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->layout_headview_recent_friend:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 95
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->open_contact_list:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->p:Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->s:Landroid/os/Bundle;

    const-string/jumbo v2, "contact_list_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->open_contact_list:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->p:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->p:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/co;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/co;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->empty_friend:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cp;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cp;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->j:Landroid/os/Handler;

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->b:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->b:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->b:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 133
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->prepareDataSource()V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->m:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->m:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    return-void
.end method

.method protected getInputLength()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

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

.method protected getRecentFriendSearched(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    if-nez v0, :cond_0

    .line 217
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->n:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->doSearchAllFriendCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 224
    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 139
    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 149
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->onDestroy()V

    .line 150
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 258
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 259
    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->onSelectItem(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected onSelectItem(Landroid/database/Cursor;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 267
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->r:Z

    if-eqz v0, :cond_1

    .line 270
    const-class v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-static {p1, v0}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->cursor2VO(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 271
    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 276
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->selectItem(Ljava/util/List;Landroid/view/View;)V

    .line 281
    :cond_0
    return-void

    .line 273
    :cond_1
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-static {p1, v0}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->cursor2VO(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 274
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method protected prepareDataSource()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    if-nez v0, :cond_0

    .line 165
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentFriendsCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->m:Landroid/database/Cursor;

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->m:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 169
    return-void
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->getInputLength()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->r:Z

    .line 181
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->p:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->r:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 183
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->r:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->a(Landroid/database/Cursor;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 181
    goto :goto_1

    :cond_4
    move v2, v1

    .line 184
    goto :goto_2

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    if-nez v0, :cond_6

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->a(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->l:Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->r:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/SingleRecentCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->m:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    .line 212
    return-void
.end method
