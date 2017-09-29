.class public final Lnet/lingala/zip4j/model/k;
.super Ljava/lang/Object;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, Lnet/lingala/zip4j/model/k;->a:J

    .line 35
    iput-wide v0, p0, Lnet/lingala/zip4j/model/k;->b:J

    .line 36
    iput-wide v0, p0, Lnet/lingala/zip4j/model/k;->c:J

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/k;->d:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lnet/lingala/zip4j/model/k;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lnet/lingala/zip4j/model/k;->d:I

    .line 86
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 61
    iput-wide p1, p0, Lnet/lingala/zip4j/model/k;->a:J

    .line 62
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lnet/lingala/zip4j/model/k;->b:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 0

    .prologue
    .line 69
    iput-wide p1, p0, Lnet/lingala/zip4j/model/k;->b:J

    .line 70
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lnet/lingala/zip4j/model/k;->c:J

    return-wide v0
.end method

.method public final c(J)V
    .locals 0

    .prologue
    .line 77
    iput-wide p1, p0, Lnet/lingala/zip4j/model/k;->c:J

    .line 78
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lnet/lingala/zip4j/model/k;->d:I

    return v0
.end method
