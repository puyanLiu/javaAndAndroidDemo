.class public Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;
.source "MutliSelectWithAccountInputFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "multi_friend_select"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "multi_choose_widget"
    .end annotation
.end field

.field protected b:Landroid/database/Cursor;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/HashMap;
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

.field protected e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

.field private f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private g:Lcom/alipay/mobile/commonui/widget/APTableView;

.field private h:Landroid/os/Bundle;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->i:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->c:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 264
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->K:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 265
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->b:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;II)V

    .line 264
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->setOriginalSelected(Ljava/util/Set;)V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method


# virtual methods
.method public afterViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 62
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 63
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->I:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getmParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->h:Landroid/os/Bundle;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->h:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bn;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bn;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->blue_button_selector:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/TitlebarGenericButtonUtil;->setGenericButtonBg(Lcom/alipay/mobile/commonui/widget/APTitleBar;I)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->h:Landroid/os/Bundle;

    const-string/jumbo v1, "withMe"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->z:Z

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bo;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bo;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->setOnIconSelectListener(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->afterViewsCommon()V

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->header_input_account:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 98
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->input:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bp;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bp;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->showLoadingProgress()V

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->startLoadThread()V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getmRecentMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getmSelectMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    :cond_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->sendLoadMessage(I)V

    .line 114
    return-void

    .line 112
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->i:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_1
    return-void
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->P:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->I:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->isFriendListLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iput-boolean v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->P:Z

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->tryToFreshMyFriends()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->sendLoadMessage(I)V

    .line 310
    :goto_1
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    if-nez v0, :cond_1

    .line 286
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->registerContentObserver()V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->z:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->loadFriendsCursor(Z)[Landroid/database/Cursor;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    const-class v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->i:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->createNewCursorFromObj(Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)Landroid/database/MatrixCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->b:Landroid/database/Cursor;

    .line 296
    aget-object v0, v1, v5

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->K:Landroid/database/Cursor;

    .line 297
    aget-object v0, v1, v4

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->J:Landroid/database/Cursor;

    .line 298
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->b:Landroid/database/Cursor;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->K:Landroid/database/Cursor;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->J:Landroid/database/Cursor;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->L:Landroid/database/Cursor;

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->L:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->J:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->makeSectionIndexer()V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/br;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/br;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 292
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 293
    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->input:I

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const-string/jumbo v1, "TAG_MULTI_INPUT_ACCOUNT"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->F:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 206
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 128
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->onDestroy()V

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected processSureButton()V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 145
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 146
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v2

    .line 147
    if-nez v2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-interface {v2, v1, v4, v5, v3}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    .line 157
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearCallback()V

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 152
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 232
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->getInputLength()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->M:Z

    .line 236
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->g:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->M:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 238
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->M:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->empty_contact:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 236
    goto :goto_1

    :cond_4
    move v2, v1

    .line 239
    goto :goto_2

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->M:Z

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    if-nez v0, :cond_8

    .line 249
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->a(Landroid/database/Cursor;)V

    .line 257
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->refreshFriendChooseWidget(Ljava/util/List;)V

    .line 258
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->updateSureButtonStatus()V

    goto :goto_0

    :cond_7
    move v1, v2

    .line 247
    goto :goto_3

    .line 251
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->K:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 252
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->M:Z

    .line 251
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;IIZ)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->L:Landroid/database/Cursor;

    if-eq v1, v0, :cond_6

    if-eqz v0, :cond_6

    .line 254
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method protected selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 213
    new-instance v2, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->M:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->refreshSelected(Ljava/util/Set;)V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->refreshFriendChooseWidget(Ljava/util/List;)V

    .line 227
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->updateSureButtonStatus()V

    .line 228
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected updateSureButtonStatus()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
