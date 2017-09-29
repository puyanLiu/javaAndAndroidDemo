.class public final Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:J

.field private d:J

.field private e:F

.field private f:J

.field private g:Ljava/lang/CharSequence;

.field private h:J

.field private i:J

.field private j:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->a:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->a:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->i:J

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$300(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->b:I

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$400(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->c:J

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$500(Landroid/support/v4/media/session/PlaybackStateCompat;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->e:F

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$600(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->h:J

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$700(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->d:J

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$800(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->f:J

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$900(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->g:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1000(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1000(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1100(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->i:J

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1200(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->j:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You may not add a null CustomAction to PlaybackStateCompat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$1;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final build()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 18

    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->b:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->c:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->d:J

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->e:F

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->f:J

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->g:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->h:J

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->i:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->j:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$1;)V

    return-object v1
.end method

.method public final setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->f:J

    return-object p0
.end method

.method public final setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->i:J

    return-object p0
.end method

.method public final setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->d:J

    return-object p0
.end method

.method public final setErrorMessage(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->j:Landroid/os/Bundle;

    return-object p0
.end method

.method public final setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->b:I

    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->c:J

    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->h:J

    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->e:F

    return-object p0
.end method
