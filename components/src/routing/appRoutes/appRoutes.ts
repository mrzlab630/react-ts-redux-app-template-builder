/**
 *
 * by mrZ
 * Email: mrZ@mrZLab630.pw
 * Date: 2022-02-18
 * Time: 13:42
 * About:
 *
 */

import {IappRoutesPage,IappRoutes} from './interface'

import {
    Home,
    ErrorPage
} from '../../views/pages'



const homePage:IappRoutesPage = {
    path:'/',
    component:Home,
}
const error:IappRoutesPage = {
    path:'/error',
    component:ErrorPage,
}



const appRoutes:IappRoutes = {
    homePage,
    error
}

export default appRoutes