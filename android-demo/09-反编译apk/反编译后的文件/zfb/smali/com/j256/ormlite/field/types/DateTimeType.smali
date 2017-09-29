.class public Lcom/j256/ormlite/field/types/DateTimeType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "DateTimeType.java"


# static fields
.field private static final associatedClassNames:[Ljava/lang/String;

.field private static dateTimeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static getMillisMethod:Ljava/lang/reflect/Method;

.field private static millisConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final singleTon:Lcom/j256/ormlite/field/types/DateTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lcom/j256/ormlite/field/types/DateTimeType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/DateTimeType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->singleTon:Lcom/j256/ormlite/field/types/DateTimeType;

    .line 27
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    .line 28
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    .line 29
    sput-object v1, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "org.joda.time.DateTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->associatedClassNames:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 34
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
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    .line 116
    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->millisConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method private getDateTimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 121
    const-string/jumbo v0, "org.joda.time.DateTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    .line 123
    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->dateTimeClass:Ljava/lang/Class;

    return-object v0
.end method

.method private getMillisMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "getMillis"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    .line 108
    :cond_0
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/DateTimeType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->singleTon:Lcom/j256/ormlite/field/types/DateTimeType;

    return-object v0
.end method


# virtual methods
.method public getAssociatedClassNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/j256/ormlite/field/types/DateTimeType;->associatedClassNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getDateTimeClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppropriateId()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isEscapedValue()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getMillisMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    if-nez p2, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not use reflection to get millis from Joda DateTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/field/types/DateTimeType;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 77
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Long;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v1, "Could not use reflection to construct a Joda DateTime"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
