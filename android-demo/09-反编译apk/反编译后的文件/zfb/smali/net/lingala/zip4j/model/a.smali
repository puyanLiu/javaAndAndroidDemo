.class public final Lnet/lingala/zip4j/model/a;
.super Ljava/lang/Object;
.source "AESExtraDataRecord.java"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/a;->a:J

    .line 30
    iput v2, p0, Lnet/lingala/zip4j/model/a;->b:I

    .line 31
    iput v2, p0, Lnet/lingala/zip4j/model/a;->c:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/model/a;->d:Ljava/lang/String;

    .line 33
    iput v2, p0, Lnet/lingala/zip4j/model/a;->e:I

    .line 34
    iput v2, p0, Lnet/lingala/zip4j/model/a;->f:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 44
    const-wide/32 v0, 0x9901

    iput-wide v0, p0, Lnet/lingala/zip4j/model/a;->a:J

    .line 45
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lnet/lingala/zip4j/model/a;->b:I

    .line 55
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lnet/lingala/zip4j/model/a;->d:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lnet/lingala/zip4j/model/a;->e:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lnet/lingala/zip4j/model/a;->c:I

    .line 65
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/lingala/zip4j/model/a;->f:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lnet/lingala/zip4j/model/a;->e:I

    .line 85
    return-void
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lnet/lingala/zip4j/model/a;->f:I

    .line 95
    return-void
.end method
