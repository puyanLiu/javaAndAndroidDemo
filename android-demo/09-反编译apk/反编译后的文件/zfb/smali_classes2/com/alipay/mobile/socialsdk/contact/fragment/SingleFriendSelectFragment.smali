.class public Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "single_friend_select"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;"
    }
.end annotation


# static fields
.field protected static final o:[Ljava/lang/String;


# instance fields
.field protected A:Z

.field protected B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field protected C:Landroid/os/HandlerThread;

.field protected D:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

.field protected E:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field protected F:Landroid/os/Bundle;

.field protected G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

.field protected H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected I:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field protected J:Landroid/database/Cursor;

.field protected K:Landroid/database/Cursor;

.field protected L:Landroid/database/Cursor;

.field protected M:Z

.field protected N:Z

.field protected O:Ljava/lang/Runnable;

.field protected P:Z

.field private a:Z

.field private b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

.field public mDataObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field protected p:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "account_contacts_list"
    .end annotation
.end field

.field protected q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyResults"
    .end annotation
.end field

.field protected r:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emptyAccountContent"
    .end annotation
.end field

.field protected s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "contacts_letters_list"
    .end annotation
.end field

.field protected t:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchBar"
    .end annotation
.end field

.field protected u:Lcom/alipay/mobile/commonui/widget/APEditText;

.field protected v:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_name"
    .end annotation
.end field

.field protected w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field protected x:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;

.field protected y:Landroid/os/Handler;

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    const-string/jumbo v2, "\u2191"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u2606"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 69
    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 70
    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    .line 67
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->o:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cv;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cv;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->mDataObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 115
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->M:Z

    .line 116
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->N:Z

    .line 119
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cw;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cw;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->O:Ljava/lang/Runnable;

    .line 127
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->P:Z

    .line 64
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->N:Z

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->O:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected afterViews()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 187
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 188
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 189
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->I:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 191
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    const-string/jumbo v2, "from_recentlsit_fragment"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->a:Z

    .line 194
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->a:Z

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->title_contact:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 203
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    const-string/jumbo v2, "titleButtonText"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 206
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    const-string/jumbo v1, "withMe"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->z:Z

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    const-string/jumbo v1, "returnAliaccount"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->A:Z

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cz;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cz;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 234
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->initHeaderOrFooterView()V

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->afterViewsCommon()V

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->showLoadingProgress()V

    .line 244
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->startLoadThread()V

    .line 245
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->sendLoadMessage(I)V

    .line 246
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->registerContentObserver()V

    goto/16 :goto_0
.end method

.method protected afterViewsCommon()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/socialsdk/R$layout;->firstchar_dialog_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 149
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_first_char:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 150
    new-instance v3, Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v1, v4}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;

    invoke-direct {v2, p0, v3, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;Lcom/alipay/mobile/commonui/widget/APPopupWindow;Lcom/alipay/mobile/commonui/widget/APTextView;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setOnItemClickListener(Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;)V

    .line 178
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->K:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->K:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_3
    return-void
.end method

.method protected getContactSearched(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->N:Z

    if-eqz v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->z:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->doSearchAllFriendCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/dd;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/dd;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected getInputLength()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

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

.method protected initHeaderOrFooterView()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 378
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->N:Z

    if-eqz v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->P:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->I:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->isFriendListLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iput-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->P:Z

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->tryToFreshMyFriends()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->sendLoadMessage(I)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    if-nez v0, :cond_2

    .line 392
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->B:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->z:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->loadFriendsCursor(Z)[Landroid/database/Cursor;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_4

    .line 396
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->K:Landroid/database/Cursor;

    .line 397
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    .line 398
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->makeSectionIndexer()V

    .line 408
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/dc;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/dc;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 415
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->tryToFreshMyFriends()V

    goto :goto_0

    .line 404
    :cond_4
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    .line 405
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->K:Landroid/database/Cursor;

    .line 406
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected declared-synchronized makeSectionIndexer()V
    .locals 5

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->o:[Ljava/lang/String;

    .line 424
    array-length v0, v1

    new-array v2, v0, [I

    .line 425
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v3

    aput v3, v2, v0

    .line 426
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->K:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    aput v3, v2, v0

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    const-string/jumbo v3, "firstAlphaChar"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    if-nez v0, :cond_1

    .line 432
    const-string/jumbo v0, "#"

    .line 434
    :cond_1
    const-string/jumbo v4, "\u2191\u2606ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 435
    aget v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v0

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 429
    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->J:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 439
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->x:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->a:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const-string/jumbo v2, "TAG_RECENT_FRIEND_SELECT"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->F:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 133
    const/4 v0, 0x1

    .line 135
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->y:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->onDestroy()V

    .line 287
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->unRegisterContentObserver()V

    .line 288
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->C:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->C:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->D:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->D:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->release()V

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    if-eqz v1, :cond_2

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 304
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->onDetach()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->N:Z

    .line 282
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 500
    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 503
    :cond_0
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    const-class v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->cursor2VO(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 505
    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 506
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u9009\u62e9 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->onResume()V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/da;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/da;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 274
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 273
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateAccountSearchIndexAsync()V

    .line 276
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    if-nez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->getInputLength()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    .line 453
    :cond_2
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->M:Z

    .line 454
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 458
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->M:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->search_no_results:I

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 459
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->M:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_4
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->empty_contact:I

    goto :goto_1

    :cond_5
    move v0, v2

    .line 459
    goto :goto_2

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 462
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->s:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->M:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->t:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    if-nez v0, :cond_8

    .line 467
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->K:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    .line 468
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->H:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 462
    goto :goto_3

    .line 472
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->b:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->K:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->M:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendSingleCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected registerContentObserver()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected selectItem(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 6

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 514
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 516
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 517
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v1

    .line 518
    if-nez v1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    if-eqz v3, :cond_2

    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->selectItem(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    .line 527
    :cond_2
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    .line 530
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearCallback()V

    goto :goto_0
.end method

.method protected sendLoadMessage(I)V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->D:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->D:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void
.end method

.method public setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->G:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    .line 540
    return-void
.end method

.method protected showLoadingProgress()V
    .locals 4

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->N:Z

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/fragment/db;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/db;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method protected startLoadThread()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "selectdatarefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->C:Landroid/os/HandlerThread;

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->C:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 252
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->C:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;-><init>(Landroid/os/Looper;Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->D:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    .line 253
    return-void
.end method

.method protected tryToFreshMyFriends()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->I:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->tryToRefreshMyFriends()V

    .line 420
    return-void
.end method

.method protected unRegisterContentObserver()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method
