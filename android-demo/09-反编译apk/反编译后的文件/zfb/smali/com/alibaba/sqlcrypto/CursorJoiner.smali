.class public final Lcom/alibaba/sqlcrypto/CursorJoiner;
.super Ljava/lang/Object;
.source "CursorJoiner.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/alibaba/sqlcrypto/CursorJoiner$Result;",
        ">;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/alibaba/sqlcrypto/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$sqlcrypto$CursorJoiner$Result:[I

.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$sqlcrypto$CursorJoiner$Result()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner;->$SWITCH_TABLE$com$alibaba$sqlcrypto$CursorJoiner$Result:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->values()[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->BOTH:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner;->$SWITCH_TABLE$com$alibaba$sqlcrypto$CursorJoiner$Result:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/alibaba/sqlcrypto/CursorJoiner;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/sqlcrypto/CursorJoiner;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "you must have the same number of columns on the left and right, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    .line 87
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    .line 89
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResultIsValid:Z

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mColumnsLeft:[I

    .line 95
    invoke-direct {p0, p3, p4}, Lcom/alibaba/sqlcrypto/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mColumnsRight:[I

    .line 97
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mColumnsLeft:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mValues:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .locals 3

    .prologue
    .line 111
    array-length v0, p2

    new-array v1, v0, [I

    .line 112
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    .line 115
    return-object v1

    .line 113
    :cond_0
    aget-object v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 245
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you must specify an even number of values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 249
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_1

    .line 265
    :goto_1
    return v1

    .line 250
    :cond_1
    aget-object v4, p0, v0

    if-nez v4, :cond_2

    .line 251
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 252
    goto :goto_1

    .line 255
    :cond_2
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    if-nez v4, :cond_3

    move v1, v3

    .line 256
    goto :goto_1

    .line 259
    :cond_3
    aget-object v4, p0, v0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 260
    if-eqz v4, :cond_5

    .line 261
    if-gez v4, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    .line 249
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private incrementCursors()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/alibaba/sqlcrypto/CursorJoiner;->$SWITCH_TABLE$com$alibaba$sqlcrypto$CursorJoiner$Result()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResultIsValid:Z

    .line 234
    :cond_0
    return-void

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 229
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .locals 3

    .prologue
    .line 208
    sget-boolean v0, Lcom/alibaba/sqlcrypto/CursorJoiner;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .line 212
    return-void

    .line 210
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    iget-boolean v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v2, :cond_4

    .line 124
    invoke-static {}, Lcom/alibaba/sqlcrypto/CursorJoiner;->$SWITCH_TABLE$com$alibaba$sqlcrypto$CursorJoiner$Result()[I

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad value for mCompareResult, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 139
    :cond_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/alibaba/sqlcrypto/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    return-object p0
.end method

.method public final next()Lcom/alibaba/sqlcrypto/CursorJoiner$Result;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorJoiner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must only call next() when hasNext() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorJoiner;->incrementCursors()V

    .line 163
    sget-boolean v0, Lcom/alibaba/sqlcrypto/CursorJoiner;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorJoiner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 168
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 169
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mColumnsLeft:[I

    invoke-static {v0, v3, v4, v1}, Lcom/alibaba/sqlcrypto/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mColumnsRight:[I

    invoke-static {v0, v1, v3, v2}, Lcom/alibaba/sqlcrypto/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResultIsValid:Z

    .line 189
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    return-object v0

    :cond_2
    move v0, v2

    .line 165
    goto :goto_0

    :cond_3
    move v3, v2

    .line 166
    goto :goto_1

    .line 173
    :pswitch_0
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    goto :goto_2

    .line 176
    :pswitch_1
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->BOTH:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    goto :goto_2

    .line 179
    :pswitch_2
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    goto :goto_2

    .line 182
    :cond_4
    if-eqz v0, :cond_5

    .line 183
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    goto :goto_2

    .line 185
    :cond_5
    sget-boolean v0, Lcom/alibaba/sqlcrypto/CursorJoiner;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_6
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorJoiner;->mCompareResult:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    goto :goto_2

    .line 171
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorJoiner;->next()Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
