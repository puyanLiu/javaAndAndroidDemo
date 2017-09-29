.class final Lcom/aps/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:Lcom/aps/ab;

.field protected d:Lcom/aps/x;

.field protected e:Lcom/aps/ak;

.field protected f:Lcom/aps/ag;

.field protected g:Lcom/aps/ae;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v1, p0, Lcom/aps/z;->a:S

    iput v1, p0, Lcom/aps/z;->b:I

    iput-object v0, p0, Lcom/aps/z;->c:Lcom/aps/ab;

    iput-object v0, p0, Lcom/aps/z;->d:Lcom/aps/x;

    iput-object v0, p0, Lcom/aps/z;->e:Lcom/aps/ak;

    iput-object v0, p0, Lcom/aps/z;->f:Lcom/aps/ag;

    iput-object v0, p0, Lcom/aps/z;->g:Lcom/aps/ae;

    return-void
.end method
