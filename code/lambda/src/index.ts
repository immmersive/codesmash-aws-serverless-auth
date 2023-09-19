export const handler = async (event: 
{
    userName: string
    request:
    {        
        userAttributes: 
        {
            nickname: string
            email: string
        }
        clientMetadata: 
        {
            subdomain: string
            clientIp: string
            language: string
        }
    }
    response:
    {
        autoConfirmUser: boolean
        autoVerifyEmail: boolean
        autoVerifyPhone: boolean
    }
}): Promise<any> =>
{
    console.log('Received EVENT', JSON.stringify(event));

    event.response.autoConfirmUser = true;
    event.response.autoVerifyEmail = true;

    return event;     
}
