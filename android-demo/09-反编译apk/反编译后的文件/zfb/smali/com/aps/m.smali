.class public Lcom/aps/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/aps/m;


# instance fields
.field private b:Lcom/aps/c;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/aps/m;->a:Lcom/aps/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iput-wide v1, p0, Lcom/aps/m;->c:J

    iput-wide v1, p0, Lcom/aps/m;->d:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/aps/m;
    .locals 2

    const-class v1, Lcom/aps/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aps/m;->a:Lcom/aps/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/m;

    invoke-direct {v0}, Lcom/aps/m;-><init>()V

    sput-object v0, Lcom/aps/m;->a:Lcom/aps/m;

    :cond_0
    sget-object v0, Lcom/aps/m;->a:Lcom/aps/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/aps/c;)Lcom/aps/c;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-static {v0}, Lcom/aps/v;->a(Lcom/aps/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/aps/v;->a(Lcom/aps/c;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/aps/c;->j()J

    move-result-wide v0

    iget-object v2, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v2}, Lcom/aps/c;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/aps/c;->i()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_3
    invoke-virtual {p1}, Lcom/aps/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/aps/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->e()I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/aps/g;->l:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-static {p1, v0}, Lcom/aps/v;->a(Lcom/aps/c;Lcom/aps/c;)F

    move-result v0

    iget-object v1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->i()F

    move-result v1

    invoke-virtual {p1}, Lcom/aps/c;->i()F

    move-result v2

    sub-float v3, v2, v1

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/aps/m;->c:J

    sub-long v6, v4, v6

    const/high16 v8, 0x42ca0000    # 101.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_8

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_9

    :cond_8
    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_c

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_c

    :cond_9
    iget-wide v0, p0, Lcom/aps/m;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iput-wide v4, p0, Lcom/aps/m;->d:J

    :cond_a
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/aps/m;->d:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iput-wide v4, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->d:J

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_c
    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_d

    iput-wide v4, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->d:J

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_d
    const v8, 0x43958000    # 299.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_e

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/aps/m;->d:J

    :cond_e
    const/high16 v8, 0x41a00000    # 20.0f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_11

    float-to-double v8, v0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v8, v10

    if-lez v0, :cond_11

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_f
    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    iput-wide v4, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_10
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_11
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_13

    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-ltz v0, :cond_12

    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_12
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
