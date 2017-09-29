.class public Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;
.source "MultiFriendSelectFragment.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "multi_friend_select"
.end annotation


# static fields
.field public static final MAX_TIPS_BANNER:I = 0x2

.field public static final MAX_TIPS_DIALOG:I = 0x1

.field public static final MAX_TIPS_TOAST:I


# instance fields
.field protected a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "multi_choose_widget"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "selectMaxTipsBanner"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_tips"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_close_tip"
    .end annotation
.end field

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/HashMap;
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

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->f:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->k:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method private a(Landroid/database/Cursor;I)V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->setOriginalSelected(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->notifyDataSetChanged()V

    .line 249
    return-void
.end method


# virtual methods
.method protected afterViews()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 89
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 90
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->I:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-object v0, v1

    .line 92
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 99
    :cond_2
    const-string/jumbo v0, "extra_origin_user"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->m:Ljava/util/List;

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v3, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/bf;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bf;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/socialsdk/R$drawable;->blue_button_selector:I

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/api/util/TitlebarGenericButtonUtil;->setGenericButtonBg(Lcom/alipay/mobile/commonui/widget/APTitleBar;I)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->requestFocus()Z

    .line 114
    const-string/jumbo v0, "selectionOverMaxTipType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->h:I

    .line 115
    const-string/jumbo v0, "selectOverMaxTipsType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->i:I

    .line 117
    const-string/jumbo v0, "multiMax"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->f:I

    .line 118
    const-string/jumbo v0, "selectionTipsCount"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->g:I

    .line 119
    const-string/jumbo v0, "multiMaxText"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 120
    const-string/jumbo v0, "multiMaxText"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->e:Ljava/lang/String;

    .line 124
    :goto_1
    const-string/jumbo v0, "withMe"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->z:Z

    .line 125
    const-string/jumbo v0, "returnAliaccount"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->A:Z

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bg;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->setOnIconSelectListener(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bh;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bh;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bi;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bi;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->afterViewsCommon()V

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->showLoadingProgress()V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->startLoadThread()V

    .line 160
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->sendLoadMessage(I)V

    goto/16 :goto_0

    .line 122
    :cond_5
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->maxMultiHint:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_0
    return-void
.end method

.method protected isOverSelectTipsSize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->g:I

    if-gtz v0, :cond_0

    move v0, v1

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->m:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->g:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 308
    goto :goto_0
.end method

.method protected isSelectedMaxSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 298
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->f:I

    if-gtz v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->f:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 175
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->onDestroy()V

    .line 176
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected processSureButton()V
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 188
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 190
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 191
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v2

    .line 192
    if-nez v2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->A:Z

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    :cond_2
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-interface {v2, v1, v4, v5, v3}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    .line 209
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearCallback()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 198
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 202
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->getInputLength()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->M:Z

    .line 220
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 221
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->M:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->search_no_results:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->K:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->a(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 224
    :cond_3
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->empty_contact:I

    goto :goto_1

    .line 229
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->M:Z

    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    if-nez v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->K:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->a(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 235
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->K:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->M:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->L:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->m:Ljava/util/List;

    iget-object v2, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 259
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->isSelectedMaxSize()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 260
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->e:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->e:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 274
    :cond_2
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-eqz v2, :cond_4

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->M:Z

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->refreshSelected(Ljava/util/Set;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->a:Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget;->refreshFriendChooseWidget(Ljava/util/List;)V

    .line 288
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->updateSureButtonStatus()V

    .line 290
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->isOverSelectTipsSize()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->j:Z

    if-nez v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 292
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->isOverSelectTipsSize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateSureButtonStatus()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 319
    if-lez v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->confirm_with_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 326
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_1
.end method
