.class final Lcom/aps/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field private synthetic a:Lcom/aps/am;


# direct methods
.method private constructor <init>(Lcom/aps/am;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/ap;->a:Lcom/aps/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/am;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aps/ap;-><init>(Lcom/aps/am;)V

    return-void
.end method


# virtual methods
.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/aps/ap;->a:Lcom/aps/am;

    invoke-static {v0, p1, p2}, Lcom/aps/am;->c(Lcom/aps/am;J)J

    iget-object v0, p0, Lcom/aps/ap;->a:Lcom/aps/am;

    invoke-static {v0, p3}, Lcom/aps/am;->a(Lcom/aps/am;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
