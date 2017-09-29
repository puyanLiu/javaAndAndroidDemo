.class public final Lnet/lingala/zip4j/model/e;
.super Ljava/lang/Object;
.source "ExtraDataRecord.java"


# instance fields
.field private a:J

.field private b:I

.field private c:[B


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
    .line 28
    iget-wide v0, p0, Lnet/lingala/zip4j/model/e;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lnet/lingala/zip4j/model/e;->b:I

    .line 41
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 32
    iput-wide p1, p0, Lnet/lingala/zip4j/model/e;->a:J

    .line 33
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lnet/lingala/zip4j/model/e;->c:[B

    .line 49
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lnet/lingala/zip4j/model/e;->b:I

    return v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/model/e;->c:[B

    return-object v0
.end method
