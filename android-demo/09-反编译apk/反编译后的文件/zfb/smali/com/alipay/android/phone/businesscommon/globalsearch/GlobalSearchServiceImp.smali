.class public Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;
.super Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
.source "GlobalSearchServiceImp.java"


# static fields
.field public static currentTime:J

.field public static decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

.field public static keyWord:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# instance fields
.field a:Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;

.field private b:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

.field private c:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/android/phone/a/a/b;

.field private g:Lcom/alipay/android/phone/a/a/b;

.field private h:Lcom/alipay/android/phone/a/a/b;

.field private i:Lcom/alipay/android/phone/a/a/b;

.field private j:Lcom/alipay/android/phone/a/a/b;

.field private k:Lcom/alipay/android/phone/a/a/j;

.field private l:Lcom/alipay/android/phone/a/a/d;

.field private m:Lcom/alipay/android/phone/a/a/b;

.field private n:Z

.field private o:Ljava/lang/String;

.field private q:Lcom/alibaba/android/babylon/search/ISearch;

.field private r:Z

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/api/QueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

.field private w:Lcom/alipay/android/phone/a/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->currentTime:J

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    .line 156
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 953
    const/4 v0, 0x0

    .line 954
    const-string/jumbo v1, "chatmsg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    const-string/jumbo v0, "chat"

    .line 958
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->b:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/a/a/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alipay/android/phone/a/a/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->b:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/a/a/j;

    invoke-virtual {v3}, Lcom/alipay/android/phone/a/a/j;->g()Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v3

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;->onSearchResult(Ljava/util/List;Ljava/lang/String;ZLcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    :cond_2
    if-eqz p2, :cond_3

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/d/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "publicplatform"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "publicplatformclient"

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/o;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_5
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 783
    :try_start_0
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    :goto_0
    return v0

    .line 786
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Z

    if-eqz v2, :cond_1

    .line 787
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Z

    goto :goto_0

    .line 789
    :cond_1
    const-string/jumbo v2, "laiwang-searcher"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 790
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 791
    goto :goto_0

    .line 792
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 794
    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->r:Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 203
    const-string/jumbo v0, "publicplatform"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :try_start_0
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->p:J

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 209
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    :cond_0
    iput-wide v0, v6, Lcom/alipay/android/phone/a/d/c;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Lcom/alipay/android/phone/a/a/b;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 217
    :cond_1
    const-string/jumbo v0, "app"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    :try_start_1
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->m:J

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 221
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    iput-wide v0, v6, Lcom/alipay/android/phone/a/d/c;->l:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Lcom/alipay/android/phone/a/a/b;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 227
    :cond_3
    const-string/jumbo v0, "coupon"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    :try_start_2
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->v:J

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 233
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    move-wide v0, v2

    :cond_4
    iput-wide v0, v6, Lcom/alipay/android/phone/a/d/c;->u:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 237
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/a/a/b;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 238
    :cond_5
    if-eqz p2, :cond_7

    const-string/jumbo v0, "contact"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    :try_start_3
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->d:J

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 245
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_6

    move-wide v0, v2

    :cond_6
    iput-wide v0, v6, Lcom/alipay/android/phone/a/d/c;->c:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 250
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/a/a/b;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 251
    :cond_7
    const-string/jumbo v0, "message_box"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    :try_start_4
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->s:J

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 258
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_8

    move-wide v0, v2

    :cond_8
    iput-wide v0, v6, Lcom/alipay/android/phone/a/d/c;->r:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 263
    :goto_4
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/a/a/b;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 264
    :cond_9
    const-string/jumbo v0, "chatmsg"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    :try_start_5
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->j:J

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 271
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    :cond_a
    iput-wide v0, v6, Lcom/alipay/android/phone/a/d/c;->i:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 275
    :goto_5
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/a/a/d;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/a/a/d;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 276
    :cond_b
    const-string/jumbo v0, "group"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 282
    :try_start_6
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->g:J

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 284
    invoke-static {p3}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_c

    move-wide v0, v2

    :cond_c
    iput-wide v0, v6, Lcom/alipay/android/phone/a/d/c;->f:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 288
    :goto_6
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/a/a/b;

    sget-object v1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    invoke-virtual {v0, p1, p3}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 289
    :cond_d
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->n:Z

    if-eqz v0, :cond_e

    .line 295
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "add new data,enter service onSearchResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 210
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 222
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 234
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 246
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 259
    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 272
    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 285
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 297
    :cond_e
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "no new data"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public addSearchIndex(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 817
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    return-void

    .line 817
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 818
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    const-string/jumbo v2, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addIndexName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 520
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 522
    :cond_1
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 523
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    .line 524
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk NewAddTableIndex : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 534
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 536
    :cond_1
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 537
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object v7, p6

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    .line 538
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk addPinYin index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addTableIndexForEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 562
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTableWithEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0
.end method

.method public addTableOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 544
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addTableOnly enter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,tableName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,bundleName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "addTableOnly : environment error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 550
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 551
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "addTableOnly :searcher is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v10}, Lcom/alibaba/android/babylon/search/ISearch;->addIndexForTableOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z

    goto :goto_0
.end method

.method public clearData()V
    .locals 3

    .prologue
    .line 426
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clear keyWord : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 428
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->e()V

    .line 429
    invoke-static {}, Lcom/alipay/android/phone/a/a/o;->d()V

    .line 430
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->e()V

    .line 431
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->e()V

    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/d;->e()V

    .line 433
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->e()V

    .line 434
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->e()V

    .line 435
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/a/a/j;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/j;->e()V

    .line 436
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->e()V

    .line 438
    return-void
.end method

.method public clearData(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 451
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clear : mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string/jumbo v0, "MainPage"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->clearData()V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeDbHook(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "alipayclient_alipass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "contact"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "group_nick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "chatmsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 839
    :cond_1
    :goto_1
    return-void

    .line 830
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 834
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_4

    .line 835
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 837
    :cond_4
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk closeDbHook : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-interface {v0, p1}, Lcom/alibaba/android/babylon/search/ISearch;->stopHook(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public deleteIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    const-string/jumbo v0, "searchDeleteDoc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dbName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",tableName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    if-eqz p4, :cond_0

    .line 924
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 935
    :goto_1
    return-void

    .line 924
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 925
    const-string/jumbo v2, "searchDeleteDoc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pkey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_3

    .line 932
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 934
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alibaba/android/babylon/search/ISearch;->deleteDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "GlobalSearchServiceImp exit!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    sput-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    .line 464
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->clearData()V

    .line 465
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->f()V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->f()V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->f()V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/a/a/d;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/d;->f()V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->f()V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->f()V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/a/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/a/a/b;->f()V

    .line 466
    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    .line 467
    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->c:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    .line 468
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    const-string/jumbo v1, "publicplatform"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    const-string/jumbo v1, "publicplatform"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    const-string/jumbo v1, "message_box"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    const-string/jumbo v1, "message_box"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    const-string/jumbo v1, "coupon"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    const-string/jumbo v1, "coupon"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_2
    return-void
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 636
    :goto_0
    return-object v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 628
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 630
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->j(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk doSearch for thirdparty : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 633
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, p2, v4, p4}, Lcom/alibaba/android/babylon/search/ISearch;->doSearchOutbundle(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/a/d/a;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 652
    :goto_0
    return-object v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 645
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 647
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->j(Ljava/lang/String;)V

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 649
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/a/d/a;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 603
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 605
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->j(Ljava/lang/String;)V

    .line 606
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk doSearch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 608
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-interface {v2, v3, p2, v4, v5}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 609
    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/util/List;)Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    move-result-object v2

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/alipay/android/phone/a/d/a;->a(JLjava/lang/String;)V

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    invoke-interface {v0, v2, p2}, Lcom/alipay/android/phone/globalsearch/api/QueryListener;->doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "indexName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " didn\'t registed, calling fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string/jumbo v1, "search"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public doSearchApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 572
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 574
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->j(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk doSearch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 577
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7fffffff

    invoke-interface {v2, v3, p2, v4, v5}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 578
    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/util/List;)Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    move-result-object v2

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/alipay/android/phone/a/d/a;->a(JLjava/lang/String;)V

    .line 582
    :try_start_0
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v3

    iput-wide v0, v3, Lcom/alipay/android/phone/a/d/c;->k:J

    .line 583
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/android/phone/a/d/c;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    invoke-interface {v0, v2, p2}, Lcom/alipay/android/phone/globalsearch/api/QueryListener;->doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "indexName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " didn\'t registed, calling fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v1, "search"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 592
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public doSearchWithSort(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_0

    .line 658
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 660
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->j(Ljava/lang/String;)V

    .line 661
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk doSearch for thirdparty : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 663
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, p2, v4, p4}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "indexFor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/alipay/android/phone/a/d/a;->a(JLjava/lang/String;)V

    .line 666
    return-object v2
.end method

.method public downLoadApp()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;->downLoadApp()V

    .line 889
    :cond_0
    return-void
.end method

.method public getChatMessageClickListener()Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelNum(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 963
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 964
    :cond_0
    const/4 v0, -0x1

    .line 966
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-interface {v0, p1}, Lcom/alibaba/android/babylon/search/ISearch;->getDelNumForGroup(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Ljava/util/List;

    return-object v0
.end method

.method public getSearchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    return-object v0
.end method

.method public highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    const/4 v0, 0x0

    .line 864
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/android/babylon/search/Utils;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hookDB(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    const/4 v0, 0x0

    .line 778
    :goto_0
    return v0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 775
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 777
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hookDB \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dbPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dbConnection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/babylon/search/ISearch;->addDB(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 495
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 497
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk init : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/babylon/search/ISearch;->addDB(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 507
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 509
    :cond_1
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search sdk init encrypt db : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/ISearch;->addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    .line 356
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->f()Ljava/lang/String;

    move-result-object v2

    .line 358
    sput-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->g()Ljava/lang/String;

    move-result-object v2

    .line 360
    sput-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->h(Ljava/lang/String;)V

    .line 364
    :goto_0
    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v3, "alipay_search"

    invoke-static {v2, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 365
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->h()V

    .line 367
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->i()V

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    const-string/jumbo v2, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init searcher ,path is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v3, "alipay_search"

    invoke-static {v2, v3}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 374
    :cond_2
    new-instance v2, Lcom/alipay/android/phone/a/a/i;

    const-string/jumbo v3, "publicplatform"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/a/a/i;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Lcom/alipay/android/phone/a/a/b;

    .line 375
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 376
    const-string/jumbo v2, "publicplatformclient"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->f:Lcom/alipay/android/phone/a/a/b;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 378
    new-instance v2, Lcom/alipay/android/phone/a/a/a;

    const-string/jumbo v3, "app"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/a/a/a;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Lcom/alipay/android/phone/a/a/b;

    .line 379
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 380
    const-string/jumbo v2, "app"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->g:Lcom/alipay/android/phone/a/a/b;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 382
    new-instance v2, Lcom/alipay/android/phone/a/a/f;

    const-string/jumbo v3, "coupon"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/a/a/f;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/a/a/b;

    .line 383
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 384
    const-string/jumbo v2, "coupon"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->h:Lcom/alipay/android/phone/a/a/b;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 386
    new-instance v2, Lcom/alipay/android/phone/a/a/g;

    const-string/jumbo v3, "message_box"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/a/a/b;

    .line 387
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 388
    const-string/jumbo v2, "message_box"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->i:Lcom/alipay/android/phone/a/a/b;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 390
    new-instance v2, Lcom/alipay/android/phone/a/a/e;

    const-string/jumbo v3, "contact"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/a/a/e;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/a/a/b;

    .line 391
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 392
    const-string/jumbo v2, "contact"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->j:Lcom/alipay/android/phone/a/a/b;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 394
    new-instance v2, Lcom/alipay/android/phone/a/a/j;

    invoke-direct {v2}, Lcom/alipay/android/phone/a/a/j;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/a/a/j;

    .line 395
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/a/a/j;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/j;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 396
    const-string/jumbo v2, "server"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->k:Lcom/alipay/android/phone/a/a/j;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 398
    new-instance v2, Lcom/alipay/android/phone/a/a/d;

    const-string/jumbo v3, "chatmsg"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/a/a/d;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/a/a/d;

    .line 399
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/a/a/d;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/d;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 400
    const-string/jumbo v2, "chatmsg"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->l:Lcom/alipay/android/phone/a/a/d;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 402
    new-instance v2, Lcom/alipay/android/phone/a/a/c;

    const-string/jumbo v3, "group"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/a/a/c;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/a/a/b;

    .line 403
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/a/a/b;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->w:Lcom/alipay/android/phone/a/a/h;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/a/a/b;->a(Lcom/alipay/android/phone/a/a/h;)V

    .line 404
    const-string/jumbo v2, "group"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->m:Lcom/alipay/android/phone/a/a/b;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/a/a/o;->a(Ljava/lang/String;Lcom/alipay/android/phone/a/a/b;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 406
    const-string/jumbo v2, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start service cost "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void

    .line 362
    :cond_3
    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public onSearchResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchDataInterface;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 181
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string/jumbo v0, "jiushi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keyword : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , drop this result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string/jumbo v2, "onSearchResult"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "source : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",keyword : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " , query : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " , hasData :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_1

    .line 187
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sourceId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 189
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 190
    iput v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->position:I

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 192
    const-string/jumbo v3, "search"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "source: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,  name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " param = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public queryChatMessage(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;->doQuery(Ljava/util/List;Ljava/lang/String;Z)V

    .line 767
    :cond_0
    return-void
.end method

.method public queryContact(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;

    .line 746
    const/4 v1, 0x0

    invoke-interface {v0, p4, p2, v1, p3}, Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;->doQuery(Ljava/util/List;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryContactGroup(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;

    .line 756
    const/4 v1, 0x1

    invoke-interface {v0, p4, p2, v1, p3}, Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;->doQuery(Ljava/util/List;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reInitIndex()V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method public registerAppDownloadListener(Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->v:Lcom/alipay/android/phone/globalsearch/api/AppDownloadListener;

    .line 882
    return-void
.end method

.method public registerChatMsgQueryer(Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a:Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;

    .line 911
    return-void
.end method

.method public registerContactQueryer(Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->t:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    return-void
.end method

.method public registerDecryptor(Lcom/alipay/android/phone/globalsearch/api/Decryptor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 809
    sput-object p1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    .line 812
    return-void
.end method

.method public registerQueryListener(Lcom/alipay/android/phone/globalsearch/api/QueryListener;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->s:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerQueryListener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method public resetTableStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 939
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_2

    .line 946
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 948
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "indexFor"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/alibaba/android/babylon/search/ISearch;->resetTableScanPositon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public scanTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    const/4 v0, 0x0

    .line 856
    :goto_0
    return v0

    .line 846
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 848
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "cann\'t do scanTable in MainThread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_2

    .line 854
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexFor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/babylon/search/ISearch;->scanTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->clearData(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "search : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sput-object p1, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/alipay/android/phone/a/a/o;->d(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->currentTime:J

    .line 97
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/b;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 103
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/c;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/c;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/d;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 115
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/e;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/e;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 153
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a:I

    .line 154
    return-void
.end method

.method public searchChatMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 716
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_0

    .line 717
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 719
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->j(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "indexFor"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 722
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    const v4, 0x7fffffff

    invoke-interface {v0, v1, p2, v5, v4}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 724
    invoke-interface {v0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 726
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 727
    invoke-static {v2, v3, v1}, Lcom/alipay/android/phone/a/d/a;->a(JLjava/lang/String;)V

    .line 729
    :try_start_0
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v1

    iput-wide v2, v1, Lcom/alipay/android/phone/a/d/c;->h:J

    .line 730
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/android/phone/a/d/c;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v0, p2, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->queryChatMessage(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_2

    .line 740
    :goto_1
    return-void

    .line 731
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 737
    :catch_1
    move-exception v0

    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " didn\'t registed, calling fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 740
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public searchContact(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 670
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 674
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 676
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 677
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "indexForcontact_friend_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move v4, v3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 680
    :try_start_0
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iput-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->b:J

    .line 681
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alipay/android/phone/a/d/c;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_1
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->queryContact(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public searchGroup(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    if-nez v0, :cond_1

    .line 693
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->p:Ljava/lang/String;

    const-string/jumbo v1, "alipay_search"

    invoke-static {v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    .line 695
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 697
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 707
    :try_start_0
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    iput-wide v2, v0, Lcom/alipay/android/phone/a/d/c;->e:J

    .line 708
    invoke-static {p2}, Lcom/alipay/android/phone/a/a/o;->e(Ljava/lang/String;)Lcom/alipay/android/phone/a/d/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/a/d/c;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_2
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->queryContactGroup(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 697
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 698
    const-string/jumbo v5, "search"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "search sdk doSearcrGroup : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,query : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->q:Lcom/alibaba/android/babylon/search/ISearch;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "indexFor"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    invoke-interface {v5, v0, p2, v6, v7}, Lcom/alibaba/android/babylon/search/ISearch;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_2

    .line 701
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 709
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public searchLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 915
    const-string/jumbo v0, "message_box"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    const-string/jumbo v0, "message_box"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_0
    return-void
.end method

.method public searchMore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->c:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;->onMoreItemClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public setMoreClickListener(Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->c:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    .line 487
    return-void
.end method

.method public setOnSearchListener(Lcom/alipay/android/phone/globalsearch/api/OnSearchListener;)V
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "setOnSearchListener"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public setResultListener(Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->b:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    .line 422
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->o:Ljava/lang/String;

    .line 870
    return-void
.end method
