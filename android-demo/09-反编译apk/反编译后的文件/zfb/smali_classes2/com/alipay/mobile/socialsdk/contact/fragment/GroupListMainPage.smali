.class public Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;
.super Landroid/support/v4/app/Fragment;
.source "GroupListMainPage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "group_single_select"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchBar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APEditText;

.field protected c:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_contacts_list"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_name"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyResults"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field protected g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

.field protected h:Landroid/os/Handler;

.field protected i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

.field protected j:Landroid/database/Cursor;

.field protected k:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

.field protected l:Ljava/lang/Runnable;

.field private m:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private n:Z

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private r:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->o:Ljava/util/List;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->p:Z

    .line 83
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/w;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/w;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->l:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->s:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->t:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->u:Ljava/util/HashMap;

    .line 57
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->p:Z

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->q:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected afterViews()V
    .locals 11
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 99
    if-eqz v6, :cond_0

    instance-of v0, v6, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v6

    .line 102
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 105
    const-class v2, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->m:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 107
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->group_list_main_foot:I

    invoke-virtual {v1, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_total_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->q:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 109
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->empty_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    .line 111
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const-string/jumbo v1, "groupHome"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->s:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->item_chatroom_index:I

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 113
    :cond_3
    check-cast v6, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->group_chat:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->h:Landroid/os/Handler;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->a:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->a:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->a:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/x;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/x;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->showLoadingProgress()V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->prepareDataSource()V

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->tryToRefreshJoinedGroup()V

    goto/16 :goto_0

    .line 111
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/socialsdk/R$layout;->item_chatroom_type:I

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->item_title:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "groupHome"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget v0, Lcom/alipay/mobile/socialsdk/R$drawable;->item_default_group:I

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->m:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const-string/jumbo v2, "groupHome"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->item_image:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->o:Ljava/util/List;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->container:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_0
    sget v0, Lcom/alipay/mobile/socialsdk/R$drawable;->item_card_group:I

    move v3, v0

    goto :goto_2

    :sswitch_1
    sget v0, Lcom/alipay/mobile/socialsdk/R$drawable;->item_bill_together_group:I

    move v3, v0

    goto :goto_2

    :sswitch_2
    sget v0, Lcom/alipay/mobile/socialsdk/R$drawable;->item_party_group:I

    move v3, v0

    goto :goto_2

    :sswitch_3
    sget v0, Lcom/alipay/mobile/socialsdk/R$drawable;->item_funds_group:I

    move v3, v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1312f9f -> :sswitch_0
        0x1312fa0 -> :sswitch_2
        0x1312fa1 -> :sswitch_3
        0x1312fbc -> :sswitch_1
    .end sparse-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_1
    return-void
.end method

.method protected getGroupSearched(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 265
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->p:Z

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->t:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->composeMemberMappingGroup(ZZLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->t:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->doSearchGroup(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->refreshListUi(Landroid/database/Cursor;Z)V

    goto :goto_0
.end method

.method protected getInputLength()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

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

.method protected handleChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 421
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 422
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 423
    const-class v2, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 424
    const-string/jumbo v2, "target_app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v2, "biz_type"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->bizType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v2, "extra_handle_type"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->mainType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string/jumbo v2, "actionType"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->actionType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v2, "actionId"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->actionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v2, "mode"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v2, "scheme"

    invoke-virtual {p2}, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->toScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setUpNewChatRoom(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V

    .line 432
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->p:Z

    .line 168
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 178
    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->closeCursor(Landroid/database/Cursor;)V

    .line 188
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 189
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->p:Z

    .line 174
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v2, 0x0

    .line 285
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->s:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 288
    if-eqz v0, :cond_1

    .line 290
    :try_start_0
    const-string/jumbo v1, "groupHome"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getExtraRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->preCheck:Z

    if-nez v2, :cond_2

    .line 296
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->handleChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    .line 311
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 297
    :cond_2
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->preCheckChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 303
    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 308
    const-string/jumbo v3, "tUserId"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "tUserType"

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v3, "20000167"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 315
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v5

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 319
    if-eqz v0, :cond_0

    .line 322
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    const-string/jumbo v1, "groupName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    const-string/jumbo v1, "aliasGroupName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->k:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    if-nez v1, :cond_2

    .line 328
    new-instance v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v1, v3}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->k:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    .line 330
    :cond_2
    new-instance v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v1}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 331
    iput v5, v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 332
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->remove_group_contact:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->k:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    .line 336
    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/fragment/y;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/y;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v0, v3, v4}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method protected preCheckChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 403
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 404
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 403
    const-class v1, Lcom/alipay/mobileprod/biz/group/rpc/MobileGroupService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/group/rpc/MobileGroupService;

    .line 406
    iget-object v1, p2, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->bizType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobileprod/biz/group/rpc/MobileGroupService;->createGroupPreCheck(Ljava/lang/String;)Lcom/alipay/mobileprod/core/model/BaseRespVO;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 408
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;->getResultStatus()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;->getResultStatus()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 409
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->handleChatRoomCreate(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    if-eqz v0, :cond_1

    .line 411
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v0, v0, Lcom/alipay/mobileprod/core/model/BaseRespVO;->memo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 415
    throw v0
.end method

.method protected prepareDataSource()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 203
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryGroupsInContactCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 206
    return-void
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->p:Z

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    .line 235
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->getInputLength()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    .line 238
    :cond_2
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 243
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->a:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 244
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->q:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->q:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->total_groups:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_4
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    if-nez v0, :cond_b

    .line 250
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->m:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->m:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->c:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 239
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 240
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    move v0, v3

    .line 243
    goto/16 :goto_2

    .line 244
    :cond_7
    if-nez v1, :cond_8

    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v3

    goto/16 :goto_3

    .line 246
    :cond_9
    if-eqz v1, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    goto :goto_4

    .line 256
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->i:Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->n:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/GroupListMainCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected removeFromContact(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 350
    :try_start_0
    new-instance v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;

    invoke-direct {v1}, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;-><init>()V

    .line 351
    iput-object p1, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;->groupId:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "saveInContacts"

    iput-object v0, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;->bizType:Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;->saveInContacts:Z

    .line 354
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 355
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 354
    const-class v2, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;

    .line 357
    invoke-interface {v0, v1}, Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;->modifyGroupConfig(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;->resultCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->removeGroupFromContact(Ljava/lang/String;)Z

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryGroupsInContactCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->j:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 363
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->f:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, "\u64cd\u4f5c\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    throw v0
.end method

.method protected showLoadingProgress()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->p:Z

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->startProgressBar()V

    goto :goto_0
.end method

.method protected tryToRefreshJoinedGroup()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 221
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 220
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->tryToRefreshJoinedGroup()V

    .line 223
    return-void
.end method
