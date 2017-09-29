.class public Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;
.source "ContactListMainPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "single_friend_select"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APPopMenu;

.field private e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

.field private f:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private g:Lcom/alipay/mobile/commonui/widget/APTextView;

.field public mFriendEntryObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/l;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/l;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->mFriendEntryObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 50
    return-void
.end method

.method private a(Landroid/database/Cursor;I)V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)Lcom/alipay/mobile/commonui/widget/APPopMenu;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->d:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    return-object v0
.end method

.method public static goHelpPage()V
    .locals 4

    .prologue
    .line 245
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    const-string/jumbo v1, "so"

    const-string/jumbo v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "pd"

    const-string/jumbo v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "bc"

    const-string/jumbo v2, "15790326"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://ds.alipay.com/socialprod/customIssue.htm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000067"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_0
    return-void
.end method

.method protected initHeaderOrFooterView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 70
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->contact_list_main_page_head:I

    invoke-virtual {v2, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 71
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->new_friend:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 72
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->group_chat:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 73
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->family_account:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 74
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->service_window:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 77
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->new_friend_desc:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 78
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->new_friend_unread:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->f:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 80
    sget v0, Lcom/alipay/mobile/socialsdk/R$layout;->contact_list_main_page_foot:I

    invoke-virtual {v2, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->b:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->b:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->tv_total_count:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setSwitchContainerVisiable(Z)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/socialsdk/R$drawable;->titlebar_add:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonIconResource(I)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/m;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/m;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->titlebar_search_normal:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonIconResource(I)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/n;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/n;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->title_contact:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 111
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/o;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/o;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 159
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 160
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 161
    :try_start_0
    const-string/jumbo v2, "SOCIAL_FRIEND"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 165
    const-string/jumbo v2, "charge"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    if-nez v0, :cond_1

    move v0, v1

    .line 170
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v2, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->start_group_chat:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialsdk/R$drawable;->group_chat:I

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    .line 172
    new-instance v3, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v5, Lcom/alipay/mobile/socialsdk/R$string;->add_friends:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->add_friend:I

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    .line 173
    new-instance v4, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v6, Lcom/alipay/mobile/socialsdk/R$string;->scan:I

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/socialsdk/R$drawable;->scan:I

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    .line 174
    new-instance v5, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v7, Lcom/alipay/mobile/socialsdk/R$string;->payee:I

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/socialsdk/R$drawable;->payee:I

    invoke-direct {v5, v6, v7}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    .line 175
    new-instance v6, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v8, Lcom/alipay/mobile/socialsdk/R$string;->help_feedback:I

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/socialsdk/R$drawable;->help_feedback:I

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Lcom/alipay/mobile/commonui/widget/APPopMenu;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->d:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    .line 184
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->d:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/q;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/q;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;Z)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->loadFriendEntryInfo()V

    .line 220
    return-void

    .line 166
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method protected loadFriendEntryInfo()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 319
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    .line 320
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->queryFriendEntryInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 321
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->refreshNewFriendEntry(Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 290
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->new_friend:I

    if-ne v0, v1, :cond_1

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "actionTypeRecommendationPage"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000253"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->group_chat:I

    if-ne v0, v1, :cond_2

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const-string/jumbo v1, "GroupMainPage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 298
    :cond_2
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->family_account:I

    if-ne v0, v1, :cond_3

    .line 299
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000205"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 300
    :cond_3
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->service_window:I

    if-ne v0, v1, :cond_0

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    const-string/jumbo v1, "target"

    const-string/jumbo v2, "followList"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000101"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->onDestroy()V

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 234
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 258
    iput-boolean v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->M:Z

    .line 259
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->total_friends:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->K:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->a(Landroid/database/Cursor;I)V

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->total_friends:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->J:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->K:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->a(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->K:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->M:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->L:Landroid/database/Cursor;

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected refreshNewFriendEntry(Ljava/lang/Object;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 348
    const-string/jumbo v1, "point"

    .line 350
    const-string/jumbo v0, ""

    .line 351
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 352
    check-cast p1, Landroid/os/Bundle;

    .line 353
    const-string/jumbo v0, "entryRedPoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    const-string/jumbo v0, "entryUnread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 355
    const-string/jumbo v0, "entryDesc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->f:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v4, v3, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 359
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->f:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    .line 363
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 369
    :goto_2
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->f:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    goto :goto_1

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    move-object v3, v1

    move v1, v2

    goto :goto_0
.end method

.method protected registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 328
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 327
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 329
    const-string/jumbo v0, "content://contactsdb/ali_account"

    .line 331
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->mDataObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 332
    const-string/jumbo v0, "content://contactsdb/new_friend"

    .line 334
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->mFriendEntryObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 336
    :cond_0
    return-void
.end method

.method protected selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 310
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 311
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 312
    const-string/jumbo v2, "key_aliaccout"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 313
    const-string/jumbo v2, "from_contact_main_page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->openPersonalProfilePage(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method

.method protected unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->mDataObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->mFriendEntryObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 344
    :cond_0
    return-void
.end method
