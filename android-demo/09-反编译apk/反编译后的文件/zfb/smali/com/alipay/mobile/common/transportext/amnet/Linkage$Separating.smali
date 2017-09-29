.class public Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;
.super Ljava/lang/Object;
.source "Linkage.java"


# instance fields
.field public codeErr:I

.field public fast:Z

.field public infErr:Ljava/lang/String;

.field public msFirst:D

.field public msLife:D

.field public msSsl:D

.field public standard:Z

.field public ticket:Z

.field public yesErr:Z

.field public yesSsl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesSsl:Z

    .line 47
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesErr:Z

    return-void
.end method
