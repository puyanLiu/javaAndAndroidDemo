.class public Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;
.super Ljava/lang/Object;
.source "Linkage.java"


# instance fields
.field public cntAttempt:I

.field public foreground:Z

.field public ipLocal:Ljava/lang/String;

.field public ipRemote:Ljava/lang/String;

.field public msAttempt:D

.field public msDns:D

.field public msTcp:D

.field public network:Ljava/lang/String;

.field public portLocal:Ljava/lang/String;

.field public portRemote:Ljava/lang/String;

.field public yesLnk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->yesLnk:Z

    return-void
.end method
