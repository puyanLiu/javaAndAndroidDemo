.class public Lcom/j256/ormlite/field/types/BigIntegerType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "BigIntegerType.java"


# static fields
.field public static DEFAULT_WIDTH:I

.field private static final singleTon:Lcom/j256/ormlite/field/types/BigIntegerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0xff

    sput v0, Lcom/j256/ormlite/field/types/BigIntegerType;->DEFAULT_WIDTH:I

    .line 21
    new-instance v0, Lcom/j256/ormlite/field/types/BigIntegerType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/BigIntegerType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/BigIntegerType;->singleTon:Lcom/j256/ormlite/field/types/BigIntegerType;

    .line 17
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 28
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 36
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/BigIntegerType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/j256/ormlite/field/types/BigIntegerType;->singleTon:Lcom/j256/ormlite/field/types/BigIntegerType;

    return-object v0
.end method


# virtual methods
.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/j256/ormlite/field/types/BigIntegerType;->DEFAULT_WIDTH:I

    return v0
.end method

.method public isAppropriateId()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p2, Ljava/math/BigInteger;

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 41
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Problems with field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parsing default BigInteger string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/j256/ormlite/field/types/BigIntegerType;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 60
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v2, Ljava/math/BigInteger;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 63
    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Problems with column "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " parsing BigInteger string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
