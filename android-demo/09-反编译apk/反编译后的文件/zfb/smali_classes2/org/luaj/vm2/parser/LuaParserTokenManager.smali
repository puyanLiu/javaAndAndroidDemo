.class public Lorg/luaj/vm2/parser/LuaParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/parser/LuaParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec2:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:Ljava/lang/StringBuffer;

.field protected curChar:C

.field curLexState:I

.field private d:Ljava/lang/StringBuffer;

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private e:I

.field protected input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-array v0, v5, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjbitVec0:[J

    new-array v0, v5, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjbitVec2:[J

    const/16 v0, 0x2d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x5f

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    aput-object v3, v0, v4

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v5

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "and"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "elseif"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "function"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "in"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "local"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "nil"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "not"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "repeat"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "then"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "until"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    const/16 v1, 0x40

    aput-object v3, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "::"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    aput-object v3, v0, v1

    const/16 v1, 0x43

    aput-object v3, v0, v1

    const/16 v1, 0x44

    aput-object v3, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "..."

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, ".."

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "=="

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "~="

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DEFAULT"

    aput-object v1, v0, v6

    const-string/jumbo v1, "IN_COMMENT"

    aput-object v1, v0, v7

    const-string/jumbo v1, "IN_LC0"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "IN_LC1"

    aput-object v2, v0, v1

    const-string/jumbo v1, "IN_LC2"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string/jumbo v2, "IN_LC3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IN_LCN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "IN_LS0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "IN_LS1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "IN_LS2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "IN_LS3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "IN_LSN"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x5f

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    new-array v0, v4, [J

    fill-array-data v0, :array_4

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjtoToken:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_5

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjtoSkip:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_6

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjtoSpecial:[J

    new-array v0, v4, [J

    fill-array-data v0, :array_7

    sput-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x3e
        0x3f
        0x41
        0x20
        0x31
        0x32
        0x33
        0x24
        0x25
        0x26
        0x1a
        0x1b
        0x1d
        0x16
        0x24
        0x25
        0x26
        0x2e
        0x24
        0x2f
        0x25
        0x26
        0x31
        0x32
        0x33
        0x3b
        0x31
        0x3c
        0x32
        0x33
        0x14
        0x19
        0x17
        0x18
        0x21
        0x22
        0x27
        0x28
        0x2d
        0x34
        0x35
        0x3a
        0x0
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 8
        0x601fffffef800001L    # 1.0726246014297432E155
        0x7fffffe2
    .end array-data

    :array_5
    .array-data 8
        0x7e003e
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x7e0000
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x1001ffc0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/luaj/vm2/parser/SimpleCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x42

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a:[I

    const/16 v0, 0x84

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d:Ljava/lang/StringBuffer;

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/parser/SimpleCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;-><init>(Lorg/luaj/vm2/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private a()I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-wide/32 v2, 0x40000

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)I
    .locals 11

    const/16 v6, 0x1b

    const/4 v3, 0x1

    const/4 v5, 0x0

    const v1, 0x7fffffff

    const/16 v10, 0x3d

    const/4 v0, 0x7

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    const/4 v2, 0x6

    aput v2, v0, v5

    move v0, v1

    move v2, v3

    move v4, v5

    :goto_0
    iget v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->u()V

    :cond_0
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_4

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    :cond_1
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v2, v4, :cond_1

    :goto_2
    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_9

    :goto_3
    return p1

    :pswitch_1
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    const/4 v7, 0x2

    invoke-direct {p0, v3, v7}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto :goto_1

    :pswitch_2
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v5, v7, v8

    goto :goto_1

    :pswitch_3
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    aput v9, v7, v8

    goto :goto_1

    :pswitch_4
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x4

    aput v9, v7, v8

    goto :goto_1

    :cond_4
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_7

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    :cond_5
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    sparse-switch v7, :sswitch_data_0

    :cond_6
    :goto_4
    if-ne v2, v4, :cond_5

    goto :goto_2

    :sswitch_0
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_6

    if-le v0, v6, :cond_6

    move v0, v6

    goto :goto_4

    :sswitch_1
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x5

    aput v9, v7, v8

    goto :goto_4

    :cond_7
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    :cond_8
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v4, :cond_8

    goto/16 :goto_2

    :cond_9
    :try_start_0
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(II)I
    .locals 1

    iput p2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final a(IJJ)I
    .locals 8

    const/4 v2, 0x3

    const/16 v7, 0x33

    const/4 v1, -0x1

    const/16 v0, 0x11

    const-wide/16 v5, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-wide/16 v2, 0x7800

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    const-wide/16 v2, 0x2000

    and-long/2addr v2, p4

    cmp-long v2, v2, v5

    if-eqz v2, :cond_2

    :cond_1
    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x1008200

    and-long/2addr v2, p4

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    const/16 v0, 0x1f

    goto :goto_0

    :cond_3
    const-wide v2, 0x7ffffe0000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_4

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x103c0

    and-long/2addr v2, p2

    cmp-long v0, v2, v5

    if-nez v0, :cond_5

    const-wide/32 v2, 0x80000

    and-long/2addr v2, p4

    cmp-long v0, v2, v5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_1
    const-wide/32 v2, 0x103c0

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const-wide/16 v2, 0x7000

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_8

    const/16 v0, 0xd

    goto :goto_0

    :cond_8
    const-wide v2, 0x118080000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    const-wide v2, 0x7ee7f60000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_9

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0

    :pswitch_2
    const-wide v2, 0x7e26b40000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_a

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_a
    const-wide/16 v2, 0x6000

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_b
    const-wide/16 v2, 0x3c0

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_c

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_c
    const-wide v2, 0xc1420000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_3
    const-wide/16 v3, 0x380

    and-long/2addr v3, p2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_d
    const-wide v3, 0x6622840000000L

    and-long/2addr v3, p2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v2, :cond_0

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_e
    const-wide v2, 0x1804300000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    const-wide/16 v2, 0x4000

    and-long/2addr v2, p2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :pswitch_4
    const-wide v3, 0x602200000000L

    and-long/2addr v3, p2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_10
    const-wide/16 v3, 0x300

    and-long/2addr v3, p2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    move v0, v2

    goto/16 :goto_0

    :cond_11
    const-wide v2, 0x6020840000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_5
    const-wide/16 v2, 0x200

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_12

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    const-wide v2, 0x600200000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    const-wide v2, 0x2000000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_13

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x5

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :pswitch_6
    const-wide v2, 0x2000000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_14

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x6

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(J)I
    .locals 9

    const-wide v7, 0x2000000000L

    const/4 v6, 0x7

    const/4 v1, 0x6

    const-wide/16 v4, 0x0

    and-long v2, v7, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x5

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    move v0, v6

    goto :goto_0

    :pswitch_0
    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method private a(JJ)I
    .locals 9

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    const-wide/32 v0, 0x10000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :cond_1
    const-wide/16 v3, 0x3c0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x58

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/32 v7, 0x8000

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/16 v0, 0x2

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x41

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide/32 v0, 0x4000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x10000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/16 v1, 0x5c

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/16 v1, 0x5e

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-wide/16 v3, 0x7000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_4
    const-wide/16 v0, 0x800

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_5
    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    const-wide v3, 0x600000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    const-wide v0, 0x8000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    const-wide v3, 0x4800000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_9
    const-wide v3, 0x40000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_a
    const-wide v3, 0x300000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_b
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-wide v3, 0x2000420000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    const-wide v0, 0x80000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const-wide v3, 0xa5000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    const-wide v0, 0x100000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    const-wide v3, 0x1000040000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_e
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x2e -> :sswitch_1
        0x3a -> :sswitch_2
        0x3d -> :sswitch_3
        0x5b -> :sswitch_4
        0x61 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x72 -> :sswitch_d
        0x75 -> :sswitch_e
    .end sparse-switch
.end method

.method private a(JJJ)I
    .locals 9

    const/4 v1, 0x2

    const/4 v6, 0x3

    const-wide/16 v4, 0x0

    and-long v2, p3, p1

    and-long v7, v4, p5

    or-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    move v0, v6

    goto :goto_0

    :sswitch_0
    const-wide/16 v0, 0x4380

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/16 v7, 0x40

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/16 v7, 0x2000

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v0, 0x20040000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide v0, 0x100000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v6, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide v0, 0x400200000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    const/16 v0, 0x30

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    const-wide v7, 0x800000000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x2f

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    const-wide v7, 0x4000000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x26

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_9
    const-wide v0, 0x800000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_a
    const-wide v0, 0x200000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(JJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x61 -> :sswitch_2
        0x63 -> :sswitch_3
        0x65 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6c -> :sswitch_6
        0x6e -> :sswitch_7
        0x6f -> :sswitch_8
        0x73 -> :sswitch_9
        0x75 -> :sswitch_a
    .end sparse-switch
.end method

.method private a(JJJJ)I
    .locals 13

    and-long v2, p3, p1

    and-long v4, p7, p5

    or-long v0, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_0
    const-wide/32 v0, 0x8000

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/16 v1, 0x4f

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/16 v9, 0x6000

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/16 v0, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/16 v9, 0x3c0

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide v9, 0x20000000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide v0, 0x400000000L

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_5
    const-wide v9, 0x800040000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    const-wide/high16 v9, 0x4000000000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    const-wide v0, 0x40000000000L

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-wide v9, 0x800000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    const-wide v9, 0x2000000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_9
    const-wide v9, 0x400000000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_a
    const-wide v0, 0x1000000000L

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/16 v1, 0x24

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_b
    const-wide v9, 0x300000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    const-wide v0, 0x80000000000L

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    const/16 v1, 0x2b

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide v9, 0x2204000000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    const-wide/high16 v9, 0x1000000000000L

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x3d -> :sswitch_1
        0x5b -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x6e -> :sswitch_8
        0x70 -> :sswitch_9
        0x72 -> :sswitch_a
        0x73 -> :sswitch_b
        0x74 -> :sswitch_c
        0x75 -> :sswitch_d
    .end sparse-switch
.end method

.method private static final a(IIIJJ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object v2, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget-object v2, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjbitVec2:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private b()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)I
    .locals 12

    const/4 v2, 0x0

    const/4 v0, 0x4

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v0, v3

    const v0, 0x7fffffff

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->u()V

    :cond_0
    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x40

    if-ge v0, v1, :cond_7

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    shl-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v8, v9, :cond_1

    move v0, v7

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0x4

    if-ne v1, v2, :cond_d

    :goto_3
    return p1

    :pswitch_0
    const-wide/16 v2, -0x2401

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const/16 v2, 0x11

    if-le v7, v2, :cond_4

    const/16 v7, 0x11

    :cond_4
    const/16 v2, 0x2a

    const/16 v3, 0x2c

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    :cond_5
    :goto_4
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x2

    aput v4, v2, v3

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x2400

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/16 v2, 0x11

    if-le v7, v2, :cond_5

    const/16 v7, 0x11

    goto :goto_4

    :pswitch_1
    const-wide/16 v2, -0x2401

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v7, 0x11

    const/16 v2, 0x2a

    const/16 v3, 0x2c

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto :goto_1

    :pswitch_2
    const-wide/16 v2, 0x2400

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x11

    if-le v7, v2, :cond_2

    const/16 v7, 0x11

    goto :goto_1

    :pswitch_3
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const/16 v2, 0x11

    if-le v7, v2, :cond_2

    const/16 v7, 0x11

    goto/16 :goto_1

    :pswitch_4
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x2

    aput v4, v2, v3

    goto/16 :goto_1

    :cond_7
    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_9

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    :cond_8
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v8, v8, -0x1

    aget v0, v0, v8

    sparse-switch v0, :sswitch_data_0

    :goto_5
    if-ne v8, v9, :cond_8

    move v0, v7

    goto/16 :goto_2

    :sswitch_0
    const/16 v7, 0x11

    const/16 v0, 0x2a

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto :goto_5

    :cond_9
    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    shr-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x6

    const-wide/16 v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    shl-long v3, v2, v4

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    const-wide/16 v5, 0x1

    iget-char v10, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v5, v10

    :cond_a
    iget-object v10, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_1

    :cond_b
    :goto_6
    if-ne v8, v9, :cond_a

    move v0, v7

    goto/16 :goto_2

    :sswitch_1
    invoke-static/range {v0 .. v6}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x11

    if-le v7, v10, :cond_c

    const/16 v7, 0x11

    :cond_c
    const/16 v10, 0x2a

    const/16 v11, 0x2c

    invoke-direct {p0, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto :goto_6

    :cond_d
    :try_start_0
    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(II)I
    .locals 2

    iput p2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x11

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final b(IJJ)I
    .locals 2

    invoke-direct/range {p0 .. p5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(II)I

    move-result v0

    return v0
.end method

.method private b(JJ)I
    .locals 9

    const/4 v1, 0x3

    const/4 v6, 0x4

    const-wide/16 v4, 0x0

    and-long v2, p3, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    move v0, v6

    goto :goto_0

    :sswitch_0
    const-wide/16 v0, 0x300

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/16 v7, 0x80

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/16 v7, 0x4000

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v0, 0x400000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide v7, 0x800000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_3

    const/16 v0, 0x23

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide/high16 v7, 0x4000000000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide v0, 0x200000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const-wide/32 v7, 0x40000000

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const-wide v7, 0x20000000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_4

    const/16 v0, 0x29

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v7, 0x2000000000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x31

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    const-wide v0, 0x200000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(JJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x61 -> :sswitch_2
        0x65 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_6
        0x72 -> :sswitch_7
        0x74 -> :sswitch_8
    .end sparse-switch
.end method

.method private c()I
    .locals 5

    const/4 v0, 0x2

    const-wide/32 v1, 0x4000000

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)I
    .locals 11

    const/16 v6, 0x16

    const/4 v3, 0x1

    const/4 v5, 0x0

    const v1, 0x7fffffff

    const/16 v10, 0x3d

    const/4 v0, 0x7

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    const/4 v2, 0x6

    aput v2, v0, v5

    move v0, v1

    move v2, v3

    move v4, v5

    :goto_0
    iget v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->u()V

    :cond_0
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_4

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    :cond_1
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v2, v4, :cond_1

    :goto_2
    if-eq v0, v1, :cond_3

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_9

    :goto_3
    return p1

    :pswitch_1
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    const/4 v7, 0x2

    invoke-direct {p0, v3, v7}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto :goto_1

    :pswitch_2
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v5, v7, v8

    goto :goto_1

    :pswitch_3
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    aput v9, v7, v8

    goto :goto_1

    :pswitch_4
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x4

    aput v9, v7, v8

    goto :goto_1

    :cond_4
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_7

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    :cond_5
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    sparse-switch v7, :sswitch_data_0

    :cond_6
    :goto_4
    if-ne v2, v4, :cond_5

    goto :goto_2

    :sswitch_0
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_6

    if-le v0, v6, :cond_6

    move v0, v6

    goto :goto_4

    :sswitch_1
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x5

    aput v9, v7, v8

    goto :goto_4

    :cond_7
    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    iget-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    :cond_8
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v4, :cond_8

    goto/16 :goto_2

    :cond_9
    :try_start_0
    iget-object v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(II)I
    .locals 12

    const/4 v1, 0x0

    const/16 v0, 0x42

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->u()V

    :cond_0
    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x40

    if-ge v0, v1, :cond_17

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    shl-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v7, v7, -0x1

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v7, v8, :cond_1

    move v2, v9

    :goto_2
    const v0, 0x7fffffff

    if-eq v2, v0, :cond_3

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    const v2, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v1, v8, 0x42

    if-ne v0, v1, :cond_24

    :goto_3
    return p2

    :pswitch_1
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const/16 v2, 0x34

    if-le v9, v2, :cond_4

    const/16 v9, 0x34

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    :cond_5
    :goto_4
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x13

    aput v4, v2, v3

    goto :goto_1

    :cond_6
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_7

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto :goto_4

    :cond_7
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_8

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto :goto_4

    :cond_8
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto :goto_4

    :cond_9
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x7

    aput v4, v2, v3

    goto :goto_4

    :pswitch_2
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_3
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x0

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_4
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x3

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_5
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x4

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_6
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x6

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_7
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_8
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x9

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_9
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xc

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_a
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xd

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_b
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x33

    if-le v9, v2, :cond_a

    const/16 v9, 0x33

    :cond_a
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x11

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_c
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x13

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_d
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    const/16 v2, 0x15

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto/16 :goto_1

    :pswitch_e
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_b

    const/16 v9, 0x34

    :cond_b
    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_f
    const-wide v2, 0x280000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto/16 :goto_1

    :pswitch_10
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_c

    const/16 v9, 0x34

    :cond_c
    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto/16 :goto_1

    :pswitch_11
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_d

    const/16 v9, 0x34

    :cond_d
    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_12
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_13
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_e

    const/16 v9, 0x34

    :cond_e
    const/16 v2, 0x1c

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_14
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_f

    const/16 v9, 0x34

    :cond_f
    const/16 v2, 0x1c

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_15
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_10

    const/16 v9, 0x34

    :cond_10
    const/16 v2, 0x1d

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_16
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto/16 :goto_1

    :pswitch_17
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_11

    const/16 v9, 0x34

    :cond_11
    const/16 v2, 0x1f

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_18
    const-wide v2, 0x280000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto/16 :goto_1

    :pswitch_19
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_12

    const/16 v9, 0x34

    :cond_12
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto/16 :goto_1

    :pswitch_1a
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_1b
    const-wide v2, -0x400000001L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_1c
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    const/16 v2, 0x3d

    if-le v9, v2, :cond_2

    const/16 v9, 0x3d

    goto/16 :goto_1

    :pswitch_1d
    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_1e
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2a

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_1f
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2b

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_20
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2c

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_21
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_22
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0xe

    const/16 v3, 0x11

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_23
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x12

    const/16 v3, 0x15

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_24
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_25
    const-wide v2, -0x8000000001L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_26
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    const/16 v2, 0x3e

    if-le v9, v2, :cond_2

    const/16 v9, 0x3e

    goto/16 :goto_1

    :pswitch_27
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_28
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x37

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_29
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x38

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_2a
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x39

    aput v4, v2, v3

    goto/16 :goto_1

    :pswitch_2b
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_2c
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x16

    const/16 v3, 0x19

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_2d
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x1a

    const/16 v3, 0x1d

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_2e
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_13

    const/16 v9, 0x34

    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_1

    :pswitch_2f
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x3e

    const/16 v3, 0x3f

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_30
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_14

    const/16 v9, 0x34

    :cond_14
    const/16 v2, 0x40

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_31
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_15

    const/16 v9, 0x34

    :cond_15
    const/16 v2, 0x40

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :pswitch_32
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x34

    if-le v9, v2, :cond_16

    const/16 v9, 0x34

    :cond_16
    const/16 v2, 0x41

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_1

    :cond_17
    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_21

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    and-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    :cond_18
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v7, v7, -0x1

    aget v2, v2, v7

    packed-switch v2, :pswitch_data_1

    :cond_19
    :goto_5
    :pswitch_33
    if-ne v7, v8, :cond_18

    move v2, v9

    goto/16 :goto_2

    :pswitch_34
    const-wide v2, 0x7fffffe87fffffeL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    const/16 v2, 0x33

    if-le v9, v2, :cond_1a

    const/16 v9, 0x33

    :cond_1a
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto :goto_5

    :cond_1b
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xe

    aput v4, v2, v3

    goto :goto_5

    :pswitch_35
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_19

    const/16 v2, 0xa

    if-le v9, v2, :cond_19

    const/16 v9, 0xa

    goto :goto_5

    :pswitch_36
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x5

    aput v4, v2, v3

    goto :goto_5

    :pswitch_37
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_19

    const/16 v2, 0xf

    if-le v9, v2, :cond_19

    const/16 v9, 0xf

    goto :goto_5

    :pswitch_38
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xe

    aput v4, v2, v3

    goto :goto_5

    :pswitch_39
    const-wide v2, 0x7fffffe87fffffeL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x33

    if-le v9, v2, :cond_1c

    const/16 v9, 0x33

    :cond_1c
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    goto/16 :goto_5

    :pswitch_3a
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(II)V

    goto/16 :goto_5

    :pswitch_3b
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x34

    if-le v9, v2, :cond_1d

    const/16 v9, 0x34

    :cond_1d
    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_5

    :pswitch_3c
    const-wide v2, 0x1002000010020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x20

    const/16 v3, 0x21

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(II)V

    goto/16 :goto_5

    :pswitch_3d
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x34

    if-le v9, v2, :cond_1e

    const/16 v9, 0x34

    :cond_1e
    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_5

    :pswitch_3e
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_5

    :pswitch_3f
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x34

    if-le v9, v2, :cond_1f

    const/16 v9, 0x34

    :cond_1f
    const/16 v2, 0x1c

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_5

    :pswitch_40
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x34

    if-le v9, v2, :cond_20

    const/16 v9, 0x34

    :cond_20
    const/16 v2, 0x1d

    const/16 v3, 0x16

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e(II)V

    goto/16 :goto_5

    :pswitch_41
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/16 v2, 0x22

    const/16 v3, 0x23

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(II)V

    goto/16 :goto_5

    :pswitch_42
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_5

    :pswitch_43
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_19

    const/16 v2, 0x24

    const/16 v3, 0x26

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(II)V

    goto/16 :goto_5

    :pswitch_44
    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_5

    :pswitch_45
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x75

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x29

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_46
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2a

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_47
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2b

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_48
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x2c

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_49
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_5

    :pswitch_4a
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_5

    :pswitch_4b
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_19

    const/16 v2, 0x27

    const/16 v3, 0x29

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(II)V

    goto/16 :goto_5

    :pswitch_4c
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_5

    :pswitch_4d
    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v3, 0x75

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x36

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_4e
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x37

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_4f
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x38

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_50
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x39

    aput v4, v2, v3

    goto/16 :goto_5

    :pswitch_51
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_5

    :cond_21
    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    shr-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x6

    const-wide/16 v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    shl-long v3, v2, v4

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    const-wide/16 v5, 0x1

    iget-char v10, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v5, v10

    :cond_22
    iget-object v10, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    add-int/lit8 v7, v7, -0x1

    aget v10, v10, v7

    sparse-switch v10, :sswitch_data_0

    :cond_23
    :goto_6
    if-ne v7, v8, :cond_22

    move v2, v9

    goto/16 :goto_2

    :sswitch_0
    invoke-static/range {v0 .. v6}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v10, 0x7

    const/16 v11, 0x9

    invoke-direct {p0, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto :goto_6

    :sswitch_1
    invoke-static/range {v0 .. v6}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_23

    const/4 v10, 0x4

    const/4 v11, 0x6

    invoke-direct {p0, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f(II)V

    goto :goto_6

    :cond_24
    :try_start_0
    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_21
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2b
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_35
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_36
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_37
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_38
        :pswitch_39
        :pswitch_39
        :pswitch_33
        :pswitch_3a
        :pswitch_33
        :pswitch_3b
        :pswitch_3c
        :pswitch_33
        :pswitch_33
        :pswitch_3d
        :pswitch_3e
        :pswitch_33
        :pswitch_3f
        :pswitch_40
        :pswitch_33
        :pswitch_33
        :pswitch_41
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_42
        :pswitch_33
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_4a
        :pswitch_33
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x27 -> :sswitch_0
        0x31 -> :sswitch_1
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(JJ)I
    .locals 9

    const/4 v1, 0x4

    const/4 v6, 0x5

    const-wide/16 v4, 0x0

    and-long v2, p3, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x3

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    move v0, v6

    goto :goto_0

    :sswitch_0
    const-wide/16 v0, 0x200

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/16 v7, 0x100

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v7, 0x200000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide v7, 0x200000000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x2d

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const-wide v7, 0x400000000000L

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(II)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x66 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch
.end method

.method private d()I
    .locals 5

    const/4 v0, 0x3

    const-wide/32 v1, 0x4000000

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private d(JJ)I
    .locals 9

    const/4 v6, 0x6

    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    and-long v2, p3, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(IJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(IJJ)I

    move v0, v6

    goto :goto_0

    :sswitch_0
    const-wide/16 v7, 0x200

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v2, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(J)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5b -> :sswitch_0
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a:[I

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private d(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b:[I

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private e()I
    .locals 7

    const-wide/32 v5, 0x4000000

    const-wide/16 v3, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x4

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private e(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    invoke-direct {p0, p2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    return-void
.end method

.method private f()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->g()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private f(II)V
    .locals 1

    :goto_0
    sget-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private g()I
    .locals 5

    const/4 v0, 0x2

    const-wide/32 v1, 0x2000000

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->h()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private h()I
    .locals 7

    const-wide/32 v5, 0x2000000

    const-wide/16 v3, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x3

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private i()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->j()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private j()I
    .locals 7

    const-wide/32 v5, 0x1000000

    const-wide/16 v3, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x2

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private k()I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-wide/32 v2, 0x800000

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private l()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->m()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private m()I
    .locals 5

    const/4 v0, 0x2

    const-wide/32 v1, 0x200000

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->n()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private n()I
    .locals 5

    const/4 v0, 0x3

    const-wide/32 v1, 0x200000

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->o()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private o()I
    .locals 7

    const-wide/32 v5, 0x200000

    const-wide/16 v3, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x4

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private p()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->q()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private q()I
    .locals 5

    const/4 v0, 0x2

    const-wide/32 v1, 0x100000

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->r()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private r()I
    .locals 7

    const-wide/32 v5, 0x100000

    const-wide/16 v3, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x3

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private s()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->t()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private t()I
    .locals 7

    const-wide/32 v5, 0x80000

    const-wide/16 v3, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x2

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private u()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjround:I

    const/16 v0, 0x42

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ReInit(Lorg/luaj/vm2/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->u()V

    return-void
.end method

.method public ReInit(Lorg/luaj/vm2/parser/SimpleCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->ReInit(Lorg/luaj/vm2/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method SkipLexicalActions(Lorg/luaj/vm2/parser/Token;)V
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/16 v0, 0xc

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lorg/luaj/vm2/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "Error: Ignoring invalid lexical state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    return-void
.end method

.method public getNextToken()Lorg/luaj/vm2/parser/Token;
    .locals 14

    const v13, 0x7fffffff

    const/4 v2, 0x1

    const/16 v12, 0x1c

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v1, v7

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/luaj/vm2/parser/SimpleCharStream;->BeginToken()C

    move-result v3

    iput-char v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c:Ljava/lang/StringBuffer;

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e:I

    :goto_1
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_2
    move v3, v1

    :goto_3
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-eq v1, v13, :cond_e

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lorg/luaj/vm2/parser/SimpleCharStream;->backup(I)V

    :cond_1
    sget-object v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjtoToken:[J

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v4, v1, v4

    const-wide/16 v8, 0x1

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v4, v8

    cmp-long v1, v4, v10

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjFillToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v1

    iput-object v0, v1, Lorg/luaj/vm2/parser/Token;->specialToken:Lorg/luaj/vm2/parser/Token;

    sget-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    sget-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    :cond_2
    move-object v0, v1

    :goto_4
    return-object v0

    :catch_0
    move-exception v1

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjFillToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v1

    iput-object v0, v1, Lorg/luaj/vm2/parser/Token;->specialToken:Lorg/luaj/vm2/parser/Token;

    move-object v0, v1

    goto :goto_4

    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/luaj/vm2/parser/SimpleCharStream;->backup(I)V

    :goto_5
    iget-char v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v4, 0x20

    if-gt v3, v4, :cond_3

    const-wide v3, 0x100003600L

    const-wide/16 v5, 0x1

    iget-char v8, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    shl-long/2addr v5, v8

    and-long/2addr v3, v5

    cmp-long v3, v3, v10

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/luaj/vm2/parser/SimpleCharStream;->BeginToken()C

    move-result v3

    iput-char v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_3
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v7}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(II)I

    move-result v1

    :goto_6
    move v3, v1

    goto/16 :goto_3

    :sswitch_0
    const/16 v1, 0x45

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_1
    const/16 v1, 0x57

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_2
    const/16 v1, 0x4b

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_3
    const/16 v1, 0x4c

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_4
    const/16 v1, 0x54

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_5
    const/16 v1, 0x52

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_6
    const/16 v1, 0x48

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_7
    const/16 v1, 0x53

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v3, 0x103c0

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto :goto_6

    :sswitch_8
    const/16 v1, 0x49

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v3, 0x1008000

    invoke-direct {p0, v10, v11, v3, v4}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto :goto_6

    :sswitch_9
    const/16 v1, 0x55

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_a
    const/16 v1, 0x4a

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v3, 0x2

    invoke-direct {p0, v10, v11, v3, v4}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto :goto_6

    :sswitch_b
    const/16 v1, 0x46

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto :goto_6

    :sswitch_c
    const/16 v1, 0x59

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v3, 0x4000000

    invoke-direct {p0, v10, v11, v3, v4}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto :goto_6

    :sswitch_d
    const/16 v1, 0x47

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v3, 0x20000000

    invoke-direct {p0, v10, v11, v3, v4}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto :goto_6

    :sswitch_e
    const/16 v1, 0x5b

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v3, 0x10000000

    invoke-direct {p0, v10, v11, v3, v4}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_f
    const/16 v1, 0x4d

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v3, 0x7800

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_10
    const/16 v1, 0x4e

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto/16 :goto_6

    :sswitch_11
    const/16 v1, 0x56

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto/16 :goto_6

    :sswitch_12
    const-wide/32 v3, 0x20000000

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_13
    const-wide/32 v3, 0x40000000

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_14
    const-wide v3, 0x80000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_15
    const-wide v3, 0x700000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_16
    const-wide v3, 0x3800000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_17
    const-wide v3, 0x4000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_18
    const-wide v3, 0x18000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_19
    const-wide v3, 0x20000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_1a
    const-wide v3, 0xc0000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_1b
    const-wide v3, 0x100000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_1c
    const-wide v3, 0x600000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_1d
    const-wide v3, 0x1800000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_1e
    const-wide/high16 v3, 0x2000000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_1f
    const-wide/high16 v3, 0x4000000000000L

    invoke-direct {p0, v3, v4, v10, v11}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :sswitch_20
    const/16 v1, 0x50

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto/16 :goto_6

    :sswitch_21
    const/16 v1, 0x51

    invoke-direct {p0, v7, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(II)I

    move-result v1

    goto/16 :goto_6

    :sswitch_22
    const-wide/32 v3, 0x40000000

    invoke-direct {p0, v10, v11, v3, v4}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(JJ)I

    move-result v1

    goto/16 :goto_6

    :pswitch_1
    const/16 v1, 0x11

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b(I)I

    move-result v1

    move v3, v1

    goto/16 :goto_3

    :pswitch_2
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_1

    move v1, v2

    :goto_7
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a()I

    move-result v1

    goto :goto_7

    :pswitch_4
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_2

    move v1, v2

    :goto_8
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->s()I

    move-result v1

    goto :goto_8

    :pswitch_6
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_3

    move v1, v2

    :goto_9
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->p()I

    move-result v1

    goto :goto_9

    :pswitch_8
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_4

    move v1, v2

    :goto_a
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->l()I

    move-result v1

    goto :goto_a

    :pswitch_a
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->c(I)I

    move-result v1

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_b
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_5

    move v1, v2

    :goto_b
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->k()I

    move-result v1

    goto :goto_b

    :pswitch_d
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_6

    move v1, v2

    :goto_c
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->i()I

    move-result v1

    goto :goto_c

    :pswitch_f
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_7

    move v1, v2

    :goto_d
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->f()I

    move-result v1

    goto :goto_d

    :pswitch_11
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    iget-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_8

    move v1, v2

    :goto_e
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    move v3, v1

    goto/16 :goto_3

    :pswitch_12
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->b()I

    move-result v1

    goto :goto_e

    :pswitch_13
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->a(I)I

    move-result v1

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v3, :cond_0

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v3, v12, :cond_0

    iput v12, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_2

    :cond_4
    sget-object v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjtoSkip:[J

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v4, v1, v4

    const-wide/16 v8, 0x1

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v4, v8

    cmp-long v1, v4, v10

    if-eqz v1, :cond_7

    sget-object v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjtoSpecial:[J

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v4, v1, v4

    const-wide/16 v8, 0x1

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v4, v8

    cmp-long v1, v4, v10

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjFillToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v1

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_f
    invoke-virtual {p0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->SkipLexicalActions(Lorg/luaj/vm2/parser/Token;)V

    :goto_10
    sget-object v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v4

    const/4 v4, -0x1

    if-eq v1, v4, :cond_f

    sget-object v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v4

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    move v1, v3

    goto/16 :goto_0

    :cond_5
    iput-object v0, v1, Lorg/luaj/vm2/parser/Token;->specialToken:Lorg/luaj/vm2/parser/Token;

    iput-object v1, v0, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    move-object v0, v1

    goto :goto_f

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->SkipLexicalActions(Lorg/luaj/vm2/parser/Token;)V

    goto :goto_10

    :cond_7
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e:I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->e:I

    sget-object v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    sget-object v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    :cond_8
    iput v13, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    :try_start_2
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v7

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move v0, v7

    :goto_11
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    const/4 v1, 0x0

    :try_start_3
    iget-object v5, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/luaj/vm2/parser/SimpleCharStream;->readChar()C

    iget-object v5, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/luaj/vm2/parser/SimpleCharStream;->backup(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v1

    move v1, v7

    :goto_12
    if-nez v1, :cond_9

    iget-object v5, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v5, v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->backup(I)V

    if-gt v0, v2, :cond_d

    const-string/jumbo v0, ""

    :goto_13
    move-object v5, v0

    :cond_9
    new-instance v0, Lorg/luaj/vm2/parser/TokenMgrError;

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lorg/luaj/vm2/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_3
    move-exception v1

    if-gt v0, v2, :cond_b

    const-string/jumbo v1, ""

    :goto_14
    iget-char v5, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v6, 0xa

    if-eq v5, v6, :cond_a

    iget-char v5, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v6, 0xd

    if-ne v5, v6, :cond_c

    :cond_a
    add-int/lit8 v3, v3, 0x1

    move-object v5, v1

    move v4, v7

    move v1, v2

    goto :goto_12

    :cond_b
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_c
    add-int/lit8 v4, v4, 0x1

    move-object v5, v1

    move v1, v2

    goto :goto_12

    :cond_d
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_e
    move v0, v3

    goto :goto_11

    :cond_f
    move v1, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x25 -> :sswitch_1
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
        0x2c -> :sswitch_6
        0x2d -> :sswitch_7
        0x2e -> :sswitch_8
        0x2f -> :sswitch_9
        0x3a -> :sswitch_a
        0x3b -> :sswitch_b
        0x3c -> :sswitch_c
        0x3d -> :sswitch_d
        0x3e -> :sswitch_e
        0x5b -> :sswitch_f
        0x5d -> :sswitch_10
        0x5e -> :sswitch_11
        0x61 -> :sswitch_12
        0x62 -> :sswitch_13
        0x64 -> :sswitch_14
        0x65 -> :sswitch_15
        0x66 -> :sswitch_16
        0x67 -> :sswitch_17
        0x69 -> :sswitch_18
        0x6c -> :sswitch_19
        0x6e -> :sswitch_1a
        0x6f -> :sswitch_1b
        0x72 -> :sswitch_1c
        0x74 -> :sswitch_1d
        0x75 -> :sswitch_1e
        0x77 -> :sswitch_1f
        0x7b -> :sswitch_20
        0x7d -> :sswitch_21
        0x7e -> :sswitch_22
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5d
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5d
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5d
        :pswitch_e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x5d
        :pswitch_10
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x5d
        :pswitch_12
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/luaj/vm2/parser/Token;
    .locals 7

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getBeginColumn()I

    move-result v1

    move v3, v2

    move-object v4, v0

    move v0, v1

    :goto_1
    iget v5, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v4}, Lorg/luaj/vm2/parser/Token;->newToken(ILjava/lang/String;)Lorg/luaj/vm2/parser/Token;

    move-result-object v4

    iput v3, v4, Lorg/luaj/vm2/parser/Token;->beginLine:I

    iput v2, v4, Lorg/luaj/vm2/parser/Token;->endLine:I

    iput v1, v4, Lorg/luaj/vm2/parser/Token;->beginColumn:I

    iput v0, v4, Lorg/luaj/vm2/parser/Token;->endColumn:I

    return-object v4

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getBeginLine()I

    move-result v4

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/SimpleCharStream;->getEndColumn()I

    move-result v1

    move v6, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v6

    goto :goto_1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/parser/LuaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
