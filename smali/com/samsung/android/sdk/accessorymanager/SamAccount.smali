.class public Lcom/samsung/android/sdk/accessorymanager/SamAccount;
.super Ljava/lang/Object;
.source "SamAccount.java"


# static fields
.field public static final ERROR_INVALID_PARAMS:I = -0x4ffffffd


# instance fields
.field private appId:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private cc:Ljava/lang/String;

.field private dataNetwork:Z

.field private email:Ljava/lang/String;

.field private guId:Ljava/lang/String;

.field private mcc:I

.field private mnc:I

.field private targetAppId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "cc"    # Ljava/lang/String;
    .param p6, "email"    # Ljava/lang/String;
    .param p7, "appSecret"    # Ljava/lang/String;
    .param p8, "dataNetwork"    # Z
    .param p9, "mcc"    # I
    .param p10, "mnc"    # I
    .param p11, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->guId:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->appId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->targetAppId:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->token:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->cc:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->email:Ljava/lang/String;

    .line 87
    iput-object p7, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->appSecret:Ljava/lang/String;

    .line 88
    iput-boolean p8, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->dataNetwork:Z

    .line 89
    iput p9, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->mcc:I

    .line 90
    iput p10, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->mnc:I

    .line 91
    iput-object p11, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->tokenSecret:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public activate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p0}, Lcom/samsung/android/sdk/accessorymanager/SamAccessoryManager;->setAccount(Lcom/samsung/android/sdk/accessorymanager/SamAccount;)I

    move-result v0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->guId:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->mcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->mnc:I

    return v0
.end method

.method public getTargetAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->targetAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public isDataNetworkEnabled()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->dataNetwork:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->appId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->appSecret:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->cc:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setDataNetworkEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->dataNetwork:Z

    .line 265
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->email:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setGuID(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->guId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setMcc(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->mcc:I

    .line 309
    return-void
.end method

.method public setMnc(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->mnc:I

    .line 287
    return-void
.end method

.method public setTargetAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->targetAppId:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->token:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/samsung/android/sdk/accessorymanager/SamAccount;->tokenSecret:Ljava/lang/String;

    .line 331
    return-void
.end method
