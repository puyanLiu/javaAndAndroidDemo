.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;
.source "MainSearchFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "global_search_fragment"
.end annotation


# static fields
.field private static r:I


# instance fields
.field protected d:Landroid/widget/ListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "list"
    .end annotation
.end field

.field protected e:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "notFound"
    .end annotation
.end field

.field protected f:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "main_page"
    .end annotation
.end field

.field protected g:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_view"
    .end annotation
.end field

.field protected h:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_bg"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_found_desc"
    .end annotation
.end field

.field protected j:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loading"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_name"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_icon"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_button"
    .end annotation
.end field

.field private n:Landroid/view/View;

.field private o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

.field private q:Ljava/lang/String;

.field private s:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field private t:Ljava/lang/String;

.field private final u:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

.field private v:Lcom/alipay/android/phone/a/b/a;

.field private w:Landroid/widget/AbsListView$OnScrollListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x4

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->r:I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;-><init>()V

    .line 87
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->u:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    .line 105
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->v:Lcom/alipay/android/phone/a/b/a;

    .line 128
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/l;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->w:Landroid/widget/AbsListView$OnScrollListener;

    .line 152
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->x:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->t:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 294
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->f:Landroid/view/View;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    const/4 v0, 0x1

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->r:I

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    sput v2, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->r:I

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->r:I

    goto :goto_0

    .line 321
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const/4 v0, 0x4

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->r:I

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;I)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->r:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 192
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "afterView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->k:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 203
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->t:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->n:Landroid/view/View;

    .line 204
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->n:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->w:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 211
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->t:Ljava/lang/String;

    .line 168
    return-void
.end method

.method protected a(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 215
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "notify ui"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setResultListener(Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;)V

    .line 258
    :cond_0
    const/4 v0, 0x4

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->r:I

    .line 259
    return-void
.end method

.method protected b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
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
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->t:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->q:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-eqz p4, :cond_2

    .line 230
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(I)V

    .line 231
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->t:Ljava/lang/String;

    .line 233
    const-string/jumbo v2, "&"

    const-string/jumbo v3, "&amp;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<"

    const-string/jumbo v3, "&lt;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ">"

    const-string/jumbo v3, "&gt;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->i:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d()V

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->t:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/af;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_3
    invoke-direct {p0, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(I)V

    .line 241
    if-eqz p2, :cond_6

    .line 242
    iget-object v1, p2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 243
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->c()V

    .line 247
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->s:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_2

    .line 245
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->d()V

    goto :goto_3
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;->onAttach(Landroid/app/Activity;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->u:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setResultListener(Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;)V

    .line 174
    instance-of v0, p1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 175
    check-cast v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->v:Lcom/alipay/android/phone/a/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/a/b/a;)V

    .line 177
    :cond_0
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->b:I

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->y:I

    .line 179
    const-string/jumbo v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "roundHeight is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->y:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setHeight(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->y:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setWidth(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 182
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->y:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundHeight(I)V

    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->y:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundWidth(I)V

    .line 186
    new-instance v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->s:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->s:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    const-string/jumbo v1, "WALLET_SEARCH@Padding"

    iput-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    .line 188
    return-void
.end method
