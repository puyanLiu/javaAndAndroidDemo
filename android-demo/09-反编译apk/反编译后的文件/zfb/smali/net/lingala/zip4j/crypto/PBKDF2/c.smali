.class public final Lnet/lingala/zip4j/crypto/PBKDF2/c;
.super Ljava/lang/Object;
.source "PBKDF2Parameters.java"


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->c:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->d:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:[B

    .line 39
    const/16 v0, 0x3e8

    iput v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:I

    .line 40
    iput-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->e:[B

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->c:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->d:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:[B

    .line 49
    const/16 v0, 0x3e8

    iput v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->e:[B

    .line 51
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:I

    return v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->c:Ljava/lang/String;

    return-object v0
.end method
