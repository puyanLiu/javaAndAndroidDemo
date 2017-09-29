.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "MorePageActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "search_more_activity"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "search_bar"
    .end annotation
.end field

.field protected b:Landroid/widget/ListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "list"
    .end annotation
.end field

.field protected c:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "notFound"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_found_desc"
    .end annotation
.end field

.field protected e:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loading"
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field private g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private h:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private i:Landroid/view/View;

.field private j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

.field private k:Lcom/alipay/android/phone/a/a/b;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

.field private u:Landroid/os/Handler;

.field private v:Z

.field private w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field private x:Landroid/widget/AbsListView$OnScrollListener;

.field private final y:Lcom/alipay/android/phone/a/a/h;

.field private final z:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 86
    iput v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    .line 87
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->p:Z

    .line 89
    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->q:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->r:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->t:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->u:Landroid/os/Handler;

    .line 97
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->v:Z

    .line 98
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->f:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->x:Landroid/widget/AbsListView$OnScrollListener;

    .line 144
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->y:Lcom/alipay/android/phone/a/a/h;

    .line 373
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->z:Landroid/widget/TextView$OnEditorActionListener;

    .line 49
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 350
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c:Landroid/view/View;

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    const-string/jumbo v3, "contact"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iget v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    iget v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    mul-int/lit8 v3, v3, 0x14

    add-int/lit8 v4, v3, 0x14

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->recountPage(II)V

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v5, "contact"

    iget-object v6, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-virtual {v3, v5, p1, v2, v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->queryContact(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTotalSize()I

    move-result v0

    if-le v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->p:Z

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "chatmsg"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    mul-int/lit8 v1, v0, 0x14

    add-int/lit8 v0, v1, 0x14

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->p:Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->queryChatMessage(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->c(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/a/a/m;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->v:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 435
    const-string/jumbo v0, "group"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "message_box"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/a/a/b;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 431
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 432
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 433
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 388
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    iget-object v2, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->notifyDataSetChanged()V

    :cond_1
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->f:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->q:Z

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->f:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->o:I

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    instance-of v1, v1, Lcom/alipay/android/phone/a/a/j;

    if-eqz v1, :cond_4

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(I)V

    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/a/a/m;->b()V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->c(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/phone/a/a/m;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const v4, 0xc350

    const/16 v5, 0x14

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "chatmsg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatmsg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1, v0, p1, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearchWithSort(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    .line 229
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v0, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 231
    iput-boolean v6, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->p:Z

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1, v0, p1, v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->queryChatMessage(Ljava/util/List;Ljava/lang/String;Z)V

    .line 260
    :cond_0
    :goto_1
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    .line 234
    iput-boolean v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->p:Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact_friend_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    .line 240
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v1, "contact"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->queryContact(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTotalSize()I

    move-result v0

    if-le v0, v5, :cond_3

    move v3, v6

    :cond_3
    iput-boolean v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->p:Z

    goto :goto_1

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->getSearchList()Ljava/util/List;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v1, "group"

    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->queryContactGroup(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    goto :goto_1

    .line 246
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearchWithSort(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_5

    .line 249
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 256
    iput-boolean v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->v:Z

    .line 257
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->q:Z

    return-void
.end method

.method static synthetic k(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->v:Z

    return v0
.end method

.method static synthetic l(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    .line 186
    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    .line 187
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->n:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->getSearchInputEdit()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->z:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->t:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->k:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 195
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->t:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i:Landroid/view/View;

    .line 196
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->x:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->y:Lcom/alipay/android/phone/a/a/h;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    instance-of v0, v0, Lcom/alipay/android/phone/a/a/j;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Ljava/lang/String;)V

    .line 219
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 191
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->finish()V

    goto/16 :goto_0

    .line 213
    :cond_0
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(I)V

    .line 214
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/m;->b()V

    .line 215
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "afterView , clearSearchParams"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/a/a/m;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    const-string/jumbo v0, "searchc"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(I)V

    .line 333
    const-string/jumbo v0, "&"

    const-string/jumbo v2, "&amp;"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "<"

    const-string/jumbo v3, "&lt;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ">"

    const-string/jumbo v3, "&gt;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->i:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 347
    :cond_1
    return-void

    .line 336
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(I)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_0
    return-void

    .line 320
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    new-instance v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->w:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    const-string/jumbo v1, "WALLET_SEARCH@Padding"

    iput-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    .line 178
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0, v2, v2}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->c()V

    .line 298
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "message_box"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/lang/String;)V

    .line 301
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k:Lcom/alipay/android/phone/a/a/b;

    .line 303
    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 304
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
