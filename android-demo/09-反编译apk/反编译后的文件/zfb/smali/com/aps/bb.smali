.class public final Lcom/aps/bb;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/aps/bc;

.field b:Landroid/location/Location;


# direct methods
.method protected constructor <init>(Lcom/aps/ba;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aps/bc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aps/bc;-><init>(Landroid/telephony/CellLocation;)V

    iput-object v0, p0, Lcom/aps/bb;->a:Lcom/aps/bc;

    return-void
.end method
