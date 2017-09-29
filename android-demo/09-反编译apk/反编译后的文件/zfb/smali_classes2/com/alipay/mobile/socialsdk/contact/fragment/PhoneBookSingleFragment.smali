.class public Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;
.super Landroid/support/v4/app/Fragment;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "phone_book_single_layout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;"
    }
.end annotation


# static fields
.field protected static final a:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private final B:Ljava/util/HashMap;
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

.field private C:J

.field private D:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

.field protected c:Landroid/os/HandlerThread;

.field protected d:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "phonebook_searchBar"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APEditText;

.field protected f:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "phone_title"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "empty_content"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "empty_text"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "phonebook_list"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/personalbase/view/CustomBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "phonebook_letters_list"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

.field protected l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field protected m:Landroid/os/Bundle;

.field public mAccountDbObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field protected n:Ljava/lang/Runnable;

.field private o:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

.field private p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

.field private q:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private r:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private s:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private t:Landroid/database/Cursor;

.field private u:Z

.field private v:Landroid/os/Handler;

.field private w:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 86
    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 87
    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 88
    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    .line 85
    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->a:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 125
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    .line 126
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->y:Z

    .line 127
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->z:Z

    .line 130
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->A:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->B:Ljava/util/HashMap;

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->C:J

    .line 135
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/bv;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bv;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->n:Ljava/lang/Runnable;

    .line 379
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/cb;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cb;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->mAccountDbObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 82
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v3, Lcom/alipay/mobile/socialsdk/R$string;->transfer_single_phonebook_alert_text:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->transfer_single_phonebook_alert_button:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/fragment/bx;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bx;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->selectItem(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 583
    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2

    .line 584
    invoke-static {p1}, Landroid/support/v4/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    if-nez v2, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/AppOpsManagerCompat;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 591
    goto :goto_0

    .line 593
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->o:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->y:Z

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->w:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->j:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->setSelection(I)V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->j:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_1
    return-void
.end method

.method protected getContactSearched(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->w:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->doSearchMobileCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/by;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/by;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method protected getInputLength()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

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

.method protected init()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->v:Landroid/os/Handler;

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->m:Landroid/os/Bundle;

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->m:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->m:Landroid/os/Bundle;

    const-string/jumbo v1, "needAccount"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->A:Z

    .line 159
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 160
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->q:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 161
    const-string/jumbo v0, "content://socialmobiledb/mobile_record"

    .line 162
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->q:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->mAccountDbObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v2, v0, v3, v4}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 163
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->r:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 164
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->s:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->d:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cc;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cc;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->d:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->d:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cd;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cd;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/socialsdk/R$layout;->firstchar_dialog_layout:I

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 187
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->tv_first_char:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 188
    new-instance v3, Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-direct {v3, v2, v1, v1, v5}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->j:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;

    invoke-direct {v2, p0, v3, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Lcom/alipay/mobile/commonui/widget/APPopupWindow;Lcom/alipay/mobile/commonui/widget/APTextView;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setOnItemClickListener(Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    sget v2, Lcom/alipay/mobile/socialsdk/R$layout;->loading_more_layout:I

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->setLoadingView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cf;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cf;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "datarefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->c:Landroid/os/HandlerThread;

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;-><init>(Landroid/os/Looper;Lcom/alipay/mobile/socialsdk/contact/util/DataLoadInterface;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->b:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    .line 226
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->showLoadingProgress()V

    .line 227
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->sendLoadMessage()V

    .line 228
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->refreshDataSource()V

    goto/16 :goto_0
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 296
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->w:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    if-nez v0, :cond_1

    .line 300
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->w:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->D:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 303
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->D:Ljava/lang/String;

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->w:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->B:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->loadMobileCursor(Ljava/util/HashMap;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->s:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->isAllMobileListLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->u:Z

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->s:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->isLocalMobileEmpty()Z

    move-result v0

    .line 308
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->z:Z

    if-nez v2, :cond_6

    if-nez v0, :cond_6

    .line 309
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->s:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->isMobileListLoaded()Z

    move-result v0

    if-nez v0, :cond_6

    .line 310
    :cond_4
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->z:Z

    .line 311
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->v:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/ch;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ch;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Ljava/lang/String;)V

    .line 319
    const-wide/16 v3, 0x2ee0

    .line 312
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 306
    goto :goto_1

    .line 322
    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    goto :goto_0

    .line 327
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->makeSectionIndexer()V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ci;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ci;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected declared-synchronized makeSectionIndexer()V
    .locals 5

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 429
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->a:[Ljava/lang/String;

    .line 430
    array-length v1, v0

    new-array v1, v1, [I

    .line 431
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->getHeaderViewsCount()I

    move-result v3

    aput v3, v1, v2

    .line 432
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    const-string/jumbo v3, "mobileFirstChar"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 433
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 437
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    const-string/jumbo v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 439
    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    .line 440
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 436
    if-nez v3, :cond_2

    .line 441
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 444
    :cond_3
    new-instance v2, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->o:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->c:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->b:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->b:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->release()V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->q:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->mAccountDbObserver:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 262
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    if-eqz v1, :cond_2

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->closeCursor(Landroid/database/Cursor;)V

    .line 270
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 271
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    .line 250
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
    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 512
    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 515
    :cond_0
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    const-class v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->cursor2VO(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    .line 517
    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    .line 518
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v2, v3}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 520
    iget v2, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->matchedAccounts:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->A:Z

    if-eqz v2, :cond_1

    .line 521
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;

    invoke-direct {v2, p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 531
    :cond_1
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 532
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->initByMobile(Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;)V

    .line 533
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->a(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/cg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/cg;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method protected refreshDataSource()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->s:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->tryToLoadMobileList()V

    .line 292
    return-void
.end method

.method protected refreshListUi(Landroid/database/Cursor;Z)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getInputLength()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 423
    :goto_0
    return-void

    .line 394
    :cond_0
    if-nez p1, :cond_1

    .line 395
    new-instance p1, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v0, v1

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 397
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->y:Z

    .line 398
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 399
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->d:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    if-eqz p2, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 400
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-nez v3, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 401
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-static {v0, v4}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 402
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz p2, :cond_8

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->search_no_results:I

    :goto_3
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 406
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->j:Lcom/alipay/mobile/personalbase/view/CustomBladeView;

    if-eqz p2, :cond_a

    :cond_3
    :goto_5
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    if-nez v0, :cond_b

    .line 409
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->r:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, v2, p1}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->r:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 418
    :cond_4
    :goto_6
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->u:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->y:Z

    if-nez v0, :cond_c

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->notifyHasMore()V

    goto :goto_0

    .line 399
    :cond_5
    if-eqz v3, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    .line 400
    goto :goto_2

    .line 402
    :cond_8
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->empty_phone_contact:I

    goto :goto_3

    .line 404
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->no_read_contacts_permission:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    goto :goto_4

    .line 406
    :cond_a
    if-eqz v3, :cond_3

    move v2, v1

    goto :goto_5

    .line 413
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->y:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->t:Landroid/database/Cursor;

    if-eq v1, v0, :cond_4

    if-eqz v0, :cond_4

    .line 415
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->p:Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookCursorAdapter;->notifyEndOfList()V

    goto/16 :goto_0
.end method

.method protected selectItem(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 345
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->r:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 344
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/adapter/PhoneBookAccountListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V

    .line 346
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->mobile_binding:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 349
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 350
    const/4 v2, 0x0

    .line 351
    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/fragment/bw;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/socialsdk/contact/fragment/bw;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Ljava/util/List;)V

    .line 350
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected sendLoadMessage()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->b:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->b:Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/util/LoadDataProcessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    return-void
.end method

.method public setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    .line 507
    return-void
.end method

.method protected showLoadingProgress()V
    .locals 4

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->loading_more:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/fragment/bz;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bz;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method protected showSelectItem(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->x:Z

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->C:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 545
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->C:J

    .line 558
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->selectItem(Ljava/util/List;)V

    goto :goto_0

    .line 546
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->B:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->B:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 549
    iget-boolean v1, v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsActive:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 550
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 552
    :cond_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 553
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->initByMobile(Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;)V

    .line 554
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
