.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "MoreChatMessageActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_more_msg"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field protected b:Landroid/widget/ListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

.field private f:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/alipay/android/phone/a/a/b;

.field private o:Landroid/view/View;

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:Landroid/widget/AbsListView$OnScrollListener;

.field private final s:Lcom/alipay/android/phone/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->g:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->h:I

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->i:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->m:Ljava/util/List;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->p:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->q:Z

    .line 64
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->r:Landroid/widget/AbsListView$OnScrollListener;

    .line 97
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->s:Lcom/alipay/android/phone/a/a/h;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Lcom/alipay/android/phone/a/a/b;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->n:Lcom/alipay/android/phone/a/a/b;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->i:Ljava/lang/String;

    const-string/jumbo v1, "&"

    const-string/jumbo v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<"

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">"

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->c:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->q:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->h:I

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->h:I

    mul-int/lit8 v3, v1, 0x14

    add-int/lit8 v4, v3, 0x14

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTotalSize()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->q:Z

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->recountPage(II)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->queryChatMessage(Ljava/util/List;Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v6, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSupportEmoji(Z)V

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->k:I

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->t:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->o:Landroid/view/View;

    .line 176
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->o:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 179
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    .line 180
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    iget-object v3, v3, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->r:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chatmsg"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->i:Ljava/lang/String;

    const v5, 0x7fffffff

    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(I)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->k:I

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->queryChatMessage(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTotalSize()I

    move-result v3

    iput v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->k:I

    invoke-virtual {v0, v2, v6}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->recountPage(II)V

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTotalSize()I

    move-result v0

    if-le v0, v6, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->q:Z

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    iput v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->k:I

    goto :goto_1
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->o:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void

    .line 201
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
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
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

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 117
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    :try_start_0
    const-string/jumbo v1, "titleName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->d:Ljava/lang/String;

    .line 120
    const-string/jumbo v1, "keyWord"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->i:Ljava/lang/String;

    .line 121
    const-string/jumbo v1, "tableName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->j:Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->l:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    const-string/jumbo v0, "chatmsg"

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->n:Lcom/alipay/android/phone/a/a/b;

    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->n:Lcom/alipay/android/phone/a/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->s:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/a/a/b;->b(Lcom/alipay/android/phone/a/a/h;)V

    .line 129
    return-void

    .line 124
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->n:Lcom/alipay/android/phone/a/a/b;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->n:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/a/a/b;->b(Lcom/alipay/android/phone/a/a/h;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->n:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->b()V

    .line 194
    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->n:Lcom/alipay/android/phone/a/a/b;

    .line 196
    :cond_0
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
