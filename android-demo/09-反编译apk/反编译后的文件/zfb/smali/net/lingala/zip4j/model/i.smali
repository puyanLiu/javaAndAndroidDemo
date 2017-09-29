.class public final Lnet/lingala/zip4j/model/i;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirLocator.java"


# instance fields
.field private a:J

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lnet/lingala/zip4j/model/i;->c:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lnet/lingala/zip4j/model/i;->b:I

    .line 44
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 34
    iput-wide p1, p0, Lnet/lingala/zip4j/model/i;->a:J

    .line 35
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lnet/lingala/zip4j/model/i;->d:I

    .line 60
    return-void
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 51
    iput-wide p1, p0, Lnet/lingala/zip4j/model/i;->c:J

    .line 52
    return-void
.end method
