.class public Lcom/alipay/android/app/data/DataProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/data/DataSourceObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/data/DataProcessor$1;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/data/BizData;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

.field private e:Lcom/alipay/android/app/data/b;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/alipay/android/app/data/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/android/app/data/b;

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/alipay/android/app/helper/ProtocolType;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/data/BizData;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->p:Ljava/lang/Object;

    .line 67
    iput-boolean v1, p0, Lcom/alipay/android/app/data/DataProcessor;->q:Z

    .line 68
    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->r:Z

    .line 70
    iput-boolean v1, p0, Lcom/alipay/android/app/data/DataProcessor;->s:Z

    .line 71
    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->t:Z

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->u:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->v:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    .line 79
    sget-object v0, Lcom/alipay/android/app/data/b;->Next:Lcom/alipay/android/app/data/b;

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;-><init>(Lcom/alipay/android/app/data/InteractionData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->d:Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    .line 84
    sget-object v0, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->o:Lcom/alipay/android/app/helper/ProtocolType;

    .line 85
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/DataSource;->a(Lcom/alipay/android/app/data/DataSourceObserver;)V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    .line 87
    iput v2, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    .line 88
    return-void
.end method

.method private declared-synchronized a(Lcom/alipay/android/app/data/b;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 562
    monitor-enter p0

    const/4 v1, 0x0

    .line 572
    :try_start_0
    sget-object v2, Lcom/alipay/android/app/data/b;->Reset:Lcom/alipay/android/app/data/b;

    if-ne p1, v2, :cond_0

    .line 573
    sget-object v1, Lcom/alipay/android/app/data/b;->Reset:Lcom/alipay/android/app/data/b;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    .line 574
    sget-object v1, Lcom/alipay/android/app/data/b;->Reset:Lcom/alipay/android/app/data/b;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/b;

    .line 575
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 576
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v2, Lcom/alipay/android/app/data/b;->Reset:Lcom/alipay/android/app/data/b;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :goto_0
    monitor-exit p0

    return v0

    .line 579
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    if-ne p1, v2, :cond_1

    .line 580
    sget-object v1, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    .line 581
    sget-object v1, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/b;

    .line 582
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 583
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v2, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 586
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/b;

    if-eq v2, p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v3, Lcom/alipay/android/app/data/b;->Wait:Lcom/alipay/android/app/data/b;

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 589
    iput-object p1, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/b;

    .line 590
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private k()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    iget-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v4

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->a()Lcom/alipay/android/lib/plusin/protocol/FrameData;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :cond_2
    iput-boolean v3, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    .line 267
    iput-boolean v3, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    move v2, v3

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/b;

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    sget-object v5, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    if-eq v0, v5, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    sget-object v5, Lcom/alipay/android/app/data/b;->Reset:Lcom/alipay/android/app/data/b;

    if-ne v0, v5, :cond_4

    move v4, v3

    .line 278
    goto :goto_0

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    sget-object v5, Lcom/alipay/android/app/data/b;->Wait:Lcom/alipay/android/app/data/b;

    if-ne v0, v5, :cond_5

    move v4, v3

    .line 281
    goto :goto_0

    .line 288
    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->o()V

    .line 290
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    .line 291
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->a()Lcom/alipay/android/app/net/Request;

    move-result-object v0

    .line 292
    if-nez v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->d()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 295
    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v6}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/app/data/DataProcessor;->b:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/alipay/android/app/data/DataProcessor;->s:Z

    invoke-static {v6, v7, v0, v8}, Lcom/alipay/android/app/util/FrameUtils;->a(Lcom/alipay/android/app/data/InteractionData;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;

    move-result-object v0

    .line 298
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/android/app/net/Request;->d()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->o:Lcom/alipay/android/app/helper/ProtocolType;

    .line 300
    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v6}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/app/data/ValidatedFrameData;->f()V

    .line 302
    :try_start_0
    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->d:Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    invoke-virtual {v6, v5, v0}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;)Lcom/alipay/android/lib/plusin/protocol/FrameData;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    :cond_7
    :goto_2
    if-eqz v1, :cond_10

    .line 313
    if-eqz v1, :cond_8

    instance-of v0, v1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_8
    :pswitch_0
    move v0, v3

    .line 314
    :goto_3
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/net/Response;->h()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    .line 315
    if-nez v0, :cond_9

    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-eqz v2, :cond_a

    :cond_9
    move v2, v4

    :goto_4
    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    .line 316
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/net/Response;->g()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->j()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    .line 318
    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v2}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/data/DataSource;->a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    .line 319
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string/jumbo v5, "global_functions"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_b

    move v2, v3

    :goto_5
    invoke-virtual {v5}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_b

    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v6}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v6

    invoke-virtual {v5, v2}, Lcom/alipay/android/app/json/JSONArray;->getJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "script"

    invoke-virtual {v7, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 304
    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/alipay/android/app/data/DataProcessor;->s:Z

    .line 305
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->e()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_7

    .line 308
    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->b()V

    goto :goto_2

    :pswitch_1
    move v0, v4

    .line 313
    goto :goto_3

    :cond_a
    move v2, v3

    .line 315
    goto :goto_4

    .line 319
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 322
    :cond_b
    :goto_6
    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    if-eqz v2, :cond_f

    .line 324
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->o()V

    .line 325
    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->t:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 330
    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    .line 331
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/net/Response;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    .line 332
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->k:Ljava/lang/String;

    .line 336
    :cond_d
    if-eqz v0, :cond_e

    move v4, v3

    .line 337
    goto/16 :goto_0

    .line 339
    :cond_e
    iget-boolean v4, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    goto/16 :goto_0

    :cond_f
    move v2, v0

    goto/16 :goto_1

    :cond_10
    move v0, v2

    goto :goto_6

    .line 313
    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->b()Z

    move-result v0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 367
    :goto_0
    return v0

    .line 365
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 367
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->d()Z

    move-result v0

    .line 374
    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 378
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 380
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 502
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 503
    iget-wide v4, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 504
    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v4, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    .line 506
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    iget v3, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    int-to-long v3, v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/data/BizData;->a(J)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    :cond_0
    :goto_1
    return-void

    .line 503
    :cond_1
    iget-wide v4, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    sub-long/2addr v0, v4

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 509
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->r:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->r:Z

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 1

    .prologue
    .line 552
    instance-of v0, p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz v0, :cond_1

    .line 553
    check-cast p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 554
    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->l:Ljava/lang/String;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/lib/plusin/ui/WindowData;)V

    .line 559
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/android/app/data/DataProcessor;->b:Ljava/lang/String;

    .line 92
    iput-wide p2, p0, Lcom/alipay/android/app/data/DataProcessor;->c:J

    .line 93
    invoke-static {p1}, Lcom/alipay/android/app/util/FrameUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->u:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/alipay/android/app/util/FrameUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->v:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/InteractionData;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alipay/android/app/net/Request;)Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/app/net/Request;)V

    .line 393
    sget-object v0, Lcom/alipay/android/app/data/b;->Next:Lcom/alipay/android/app/data/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/b;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/alipay/android/app/util/FrameUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->q:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->q:Z

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->q:Z

    .line 141
    :cond_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6002"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 170
    move v0, v1

    .line 172
    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 174
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/b;

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    sget-object v3, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    if-eq v0, v3, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->o()V

    .line 179
    :cond_0
    sget-object v0, Lcom/alipay/android/app/data/DataProcessor$1;->a:[I

    iget-object v3, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    invoke-virtual {v3}, Lcom/alipay/android/app/data/b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 214
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->k()Z

    move-result v0

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->l()Z

    move-result v0

    goto :goto_0

    .line 190
    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->m()Z

    move-result v0

    goto :goto_0

    .line 193
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->n()Z

    move-result v0

    goto :goto_0

    .line 196
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->b()V

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->f()V

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v3, Lcom/alipay/android/app/data/b;->Next:Lcom/alipay/android/app/data/b;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :pswitch_6
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string/jumbo v0, "no show first window"

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->l:Ljava/lang/String;

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    .line 210
    goto :goto_0

    .line 238
    :cond_2
    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/b;

    .line 239
    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    .line 242
    :goto_2
    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 220
    const-string/jumbo v3, "6002"

    .line 221
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_3

    .line 222
    invoke-static {}, Lcom/alipay/android/app/base/util/Tools;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/android/app/base/util/Tools;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v3, "6002"

    .line 225
    new-instance v4, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object v3, v4

    .line 232
    :goto_3
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/IAppConfig;->j()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {v4, v0, v5}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->a()Lcom/alipay/android/lib/plusin/protocol/FrameData;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    iget-object v4, p0, Lcom/alipay/android/app/data/DataProcessor;->o:Lcom/alipay/android/app/helper/ProtocolType;

    sget-object v5, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    if-ne v4, v5, :cond_5

    if-nez v0, :cond_5

    move v0, v2

    :goto_5
    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v2}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v2

    invoke-virtual {v2, p0, v3, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Lcom/alipay/android/app/data/DataProcessor;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/b;

    .line 239
    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    move v0, v1

    .line 240
    goto :goto_2

    .line 229
    :cond_3
    const/4 v4, 0x0

    :try_start_4
    invoke-static {v0, v4}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_3

    :cond_4
    move v0, v1

    .line 234
    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->o:Lcom/alipay/android/app/helper/ProtocolType;

    sget-object v4, Lcom/alipay/android/app/helper/ProtocolType;->Mini:Lcom/alipay/android/app/helper/ProtocolType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v2, v4, :cond_6

    if-nez v0, :cond_6

    const/4 v0, 0x4

    goto :goto_5

    .line 238
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/b;

    .line 239
    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/b;

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_5

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/alipay/android/app/data/b;->Wait:Lcom/alipay/android/app/data/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/b;)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/alipay/android/app/data/b;->Next:Lcom/alipay/android/app/data/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/b;)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/alipay/android/app/data/b;->PrevWindow:Lcom/alipay/android/app/data/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/b;)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/alipay/android/app/data/b;->PrevStep:Lcom/alipay/android/app/data/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/b;)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/alipay/android/app/data/b;->ClearInvalid:Lcom/alipay/android/app/data/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/b;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    sget-object v0, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/b;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
